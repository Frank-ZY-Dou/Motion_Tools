import pdb
import bpy
import sys
print(sys.exec_prefix)
import numpy as np
import os



data_path = "./02"


g = os.walk(data_path)

files = []
for path,dir_list,file_list in g:  
    for file_name in file_list:  
        files.append(os.path.join(path, file_name))

print(files)

for iii, f in enumerate(files):
  sourcepath = f
  desired_fps = 120
  dumppath = f.replace(".bvh","_fps%02d.fbx"%desired_fps)
  if os.path.exists(dumppath):
    continue

  bpy.ops.import_anim.bvh(filepath=sourcepath, filter_glob="*.bvh", global_scale=1, frame_start=1, use_fps_scale=False,
                            use_cyclic=False, rotate_mode='NATIVE')


  a = bpy.context.object.animation_data.action
  frame_start, frame_end = map(int, a.frame_range)
  print(">>>>>")
  print(frame_start, frame_end)
  print(">>>>>")
  # input("22")
    # Export as FBX
    # See http://www.blender.org/documentation/blender_python_api_2_62_1/bpy.ops.export_scene.html
  print(">>>>>>>>>>")
  print("loaded scene fps:", bpy.context.scene.render.fps)
  actual_fps = bpy.context.scene.render.fps / bpy.context.scene.render.fps_base
  print("loaded actual fps:", actual_fps)
  print(">>>>>>>>>>")
  print("reset fps:", desired_fps)
  bpy.context.scene.render.fps = int(desired_fps)
  print("loaded scene fps:", bpy.context.scene.render.fps)
  actual_fps = bpy.context.scene.render.fps / bpy.context.scene.render.fps_base
  print("loaded actual fps:", actual_fps)
  print(">>>>>>>>>>")



  bpy.ops.export_scene.fbx(filepath=dumppath)
  #
  # ######################
  # bpy.ops.import_anim.bvh(filepath=sourcepath)
  #
  # frame_start = int(9999)
  # frame_end = int(-9999)
  # action = bpy.data.actions[-1]
  # if  action.frame_range[1] > frame_end:
  #   frame_end = int(action.frame_range[1])
  # if action.frame_range[0] < frame_start:
  #   frame_start = int(action.frame_range[0])
  #
  # # frame_end = np.max([60, frame_end])
  # bpy.ops.export_scene.fbx(filepath=dumppath,
  #                         frame_start=frame_start,
  #                         frame_end=frame_end, root_transform_only=True)

  print("exportation done")
  print("actions: ")
  print(bpy.data.actions)
  for a in bpy.data.actions:
    bpy.data.actions.remove(a)

  # for action in bpy.data.actions:
      # if action.users == 0:
      #   bpy.data.actions.remove(action)

  bpy.ops.object.select_all(action='SELECT')
  bpy.ops.object.delete()
  # bpy.data.actions.remove(bpy.data.actions[-1])
  print(dumppath+" processed.")
  print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
  print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")

  print(  "        %d/%d"%(iii, len(files)))
  print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
  print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
  print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
print("done")


