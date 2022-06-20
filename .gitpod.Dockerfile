FROM gitpod/workspace-full:2022-05-08-14-31-53

RUN sudo apt update && sudo apt upgrade
RUN sudo apt install awscli -y

RUN mkdir /home/gitpod/.aws/
RUN echo '[default]\nregion = us-west-2' >> /home/gitpod/.aws/config
