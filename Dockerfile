FROM nvidia/cuda:10.1-devel-ubuntu18.04

RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN apt-get install -y git
RUN pip3 install --upgrade pip
RUN pip3 install torch==1.7.1+cu101 torchvision==0.8.2+cu101 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
RUN pip3 install tensorflow-gpu==2.3.0
RUN pip3 install numpy
RUN pip3 install scipy
RUN pip3 install pandas
RUN pip3 install matplotlib
RUN pip3 install jupyter
RUN pip3 install seaborn
RUN pip3 install scikit-learn

ENV LIBRARY_PATH /usr/local/cuda/lib64/stubs