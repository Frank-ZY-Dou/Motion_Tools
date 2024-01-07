# Geometry_Tools
Some motion tools, maintained by [Frank Zhiyang Dou](https://frank-zy-dou.github.io/index.html).

A list of our research works on character animation (both kinematics-based and physics-based animation).
- **[Physically Simulated Character Animation]** 
  - C·ASE: Learning Conditional Adversarial Skill Embeddings for Physics-based Characters, SIGGRAPH ASIA 2023. [[Project Page]](https://frank-zy-dou.github.io/projects/CASE/index.html)
- **[Kinematics-based Character Animation]** 
  - TLcontrol: Trajectory and Language Control for Human Motion Synthesis, Arxiv 2023. [[Project Page]](https://tlcontrol.weilinwl.com/)
  - EMDM: Efficient Motion Diffusion Model for Fast, High-Quality Human Motion Generation, Arxiv 2023. [[Project Page]](https://frank-zy-dou.github.io/projects/EMDM/index.html)

# Introduction
Tool list
- bvh2fbx: [bvh2fbx.py](bvh2fbx.py)
- smpl npy2mp4: [vis_tool_mp4.py](npy2mp4%2Fvis_tool_mp4.py)

# Install
```angular2svg
conda create -n Motion_Tool python=3.8
conda activate Motion_Tool
pip install smplx
pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cu117
pip install numpy
pip install matplotlib==3.1.3
pip install scipy
pip install scikit-image
pip install chumpy
pip install numpy==1.23.1
```
# Other links
- https://github.com/KosukeFukazawa/CharacterAnimationTools
- https://github.com/GuyTevet/motion-diffusion-model