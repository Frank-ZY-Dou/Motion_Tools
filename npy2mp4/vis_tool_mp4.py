import os
import numpy as np
import utils.paramUtil as paramUtil
from utils.plot_script import plot_3d_motion
import shutil
from rotation2xyz import Rotation2xyz
from rotation_conversions import axis_angle_to_matrix, matrix_to_rotation_6d
import torch

file_path = './vis_npy/Bandaging_clip_9.npy'
# file_path = './vis_npy/Baseball_Bunt_clip_11.npy'
output_dir = "./vis_mp4/"
# 读取.npy文件

# 打印键


def save_obj(path, joints):
    with open(path, 'w') as f:
        print(joints.shape)
        for v in joints:
            f.write('v %f %f %f\n' % (v[0], v[1], v[2]))
def main():
    motion = np.load(file_path, allow_pickle=True)
    output_path = os.path.join(output_dir, file_path.split('/')[-1].split('.')[0])
    batch_size = 1
    motion_parms = {
        'root_orient': motion[:, :3],  # controls the global root orientation
        'pose_body': motion[:, 3:3 + 63],  # controls the body
        'pose_hand': motion[:, 66:66 + 90],  # controls the finger articulation
        'pose_jaw': motion[:, 66 + 90:66 + 93],  # controls the yaw pose
        'face_expr': motion[:, 159:159 + 50],  # controls the face expression
        'face_shape': motion[:, 209:209 + 100],  # controls the face shape
        'trans': motion[:, 309:309 + 3],  # controls the global body position
        'betas': motion[:, 312:],  # controls the body shape. Body shape is static
    }
    motion_length = motion.shape[0]

    motion_parms["root_orient"] = motion_parms["root_orient"].reshape(motion_length, 1,  3)
    motion_parms["pose_body"] = motion_parms["pose_body"].reshape(motion_length, 21 , 3)
    fake_hand_motion = np.zeros((motion_length,2,3)) ############################# note here.

    smpl_motion = np.concatenate([motion_parms["root_orient"], motion_parms["pose_body"], fake_hand_motion], axis=1)
    smpl_motion_6D = matrix_to_rotation_6d(axis_angle_to_matrix( torch.tensor(smpl_motion).reshape(-1,3)))
    smpl_motion_6D = smpl_motion_6D.reshape(motion_length, 24, 6)
    # print(smpl_motion_6D.shape) # (137, 24, 6)


    motion_root_translation = motion[:, 309:309 + 3].reshape(motion_length, 1, 3)
    motion_root_translation = np.concatenate([motion_root_translation, np.zeros((motion_length, 1, 3))], axis=2)
    # print(motion_root_translation.shape) # (137, 1, 6)
    motion_root_translation = torch.tensor(motion_root_translation)


    sample = torch.cat([smpl_motion_6D, motion_root_translation], axis=1)
    # print(sample.shape) # (137, 25, 6)

    sample = sample.reshape(batch_size, motion_length, 25, 6)
    # print(sample.shape) # (1, 137, 25, 6)
#         print(sample.shape) # 10, 24, 3, 60 (batch_size, njoints, 3, n_frames)
    sample = sample.permute(0, 2, 3, 1)
    rot2xyz = Rotation2xyz(device='cuda')
    sample = sample.cuda()
    rot2xyz_mask = torch.ones([batch_size, motion_length], dtype=torch.bool).cuda()
    sample = rot2xyz(x=sample.float(), mask=rot2xyz_mask, pose_rep="rot6d", glob=True, translation=True,
                               jointstype='smpl', vertstrans=True, betas=None, beta=0, glob_rot=None,
                               get_rotations_back=False)
    # print(sample.shape)  torch.Size([1, 24, 3, 137])
    sample = sample * 500

    all_text = []
    all_motions = []
    all_lengths = []
    all_text += ['sample_vis'] * 1
    all_motions.append(sample.cpu().numpy())
    all_lengths.append(motion.shape[0])


    all_motions = np.concatenate(all_motions, axis=0)
    all_text = all_text[:motion_length]
    if len(all_lengths) == 1:
        all_lengths = np.array(all_lengths, dtype=int).reshape(1,1)
    else:
        all_lengths = np.concatenate(all_lengths, axis=0)[:motion_length]
    if os.path.exists(output_path):
        shutil.rmtree(output_path)
    os.makedirs(output_path)
    skeleton = paramUtil.smpl_kinematic_chain

    sample_print_template, row_print_template, all_print_template, \
    sample_file_template, row_file_template, all_file_template = construct_template_variables(False)
    sameple_id = 0
    caption = all_text[sameple_id]
    length = all_lengths[sameple_id]
    motion = all_motions[sameple_id].transpose(2, 0, 1)[:motion_length]
    save_file = sample_file_template.format(sameple_id, sameple_id)
    animation_save_path = os.path.join(output_path, save_file)
    plot_3d_motion(animation_save_path, skeleton, motion, dataset="kit", title=caption, fps=20)
    # Credit for visualization: https://github.com/EricGuo5513/text-to-motion

    abs_path = os.path.abspath(output_path)
    save_obj(output_path+"/vis.obj", sample[0, :, :, 10].cpu().numpy())
    print(f'[Done] Results are at [{abs_path}]')





def construct_template_variables(unconstrained):
    row_file_template = 'sample{:02d}.mp4'
    all_file_template = 'samples_{:02d}_to_{:02d}.mp4'
    if unconstrained:
        sample_file_template = 'row{:02d}_col{:02d}.mp4'
        sample_print_template = '[{} row #{:02d} column #{:02d} | -> {}]'
        row_file_template = row_file_template.replace('sample', 'row')
        row_print_template = '[{} row #{:02d} | all columns | -> {}]'
        all_file_template = all_file_template.replace('samples', 'rows')
        all_print_template = '[rows {:02d} to {:02d} | -> {}]'
    else:
        sample_file_template = 'sample{:02d}_rep{:02d}.mp4'
        sample_print_template = '["{}" ({:02d}) | Rep #{:02d} | -> {}]'
        row_print_template = '[ "{}" ({:02d}) | all repetitions | -> {}]'
        all_print_template = '[samples {:02d} to {:02d} | all repetitions | -> {}]'

    return sample_print_template, row_print_template, all_print_template, \
           sample_file_template, row_file_template, all_file_template




if __name__ == "__main__":
    main()
