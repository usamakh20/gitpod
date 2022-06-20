FROM gitpod/workspace-full:2022-05-08-14-31-53

RUN sudo apt update
RUN sudo apt install awscli -y

RUN mkdir /home/gitpod/.aws/
RUN echo '[default]\nregion = us-west-2' >> /home/gitpod/.aws/config


RUN wget https://github.com/intel/intel-graphics-compiler/releases/download/igc-1.0.11378/intel-igc-core_1.0.11378_amd64.deb
RUN wget https://github.com/intel/intel-graphics-compiler/releases/download/igc-1.0.11378/intel-igc-opencl_1.0.11378_amd64.deb
RUN wget https://github.com/intel/compute-runtime/releases/download/22.24.23453/intel-level-zero-gpu-dbgsym_1.3.23453_amd64.ddeb
RUN wget https://github.com/intel/compute-runtime/releases/download/22.24.23453/intel-level-zero-gpu_1.3.23453_amd64.deb
RUN wget https://github.com/intel/compute-runtime/releases/download/22.24.23453/intel-opencl-icd-dbgsym_22.24.23453_amd64.ddeb
RUN wget https://github.com/intel/compute-runtime/releases/download/22.24.23453/intel-opencl-icd_22.24.23453_amd64.deb
RUN wget https://github.com/intel/compute-runtime/releases/download/22.24.23453/libigdgmm12_22.1.3_amd64.deb

RUN sudo dpkg -i *.deb
