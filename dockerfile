FROM conda/miniconda3

WORKDIR /

RUN apt-get update -y && apt-get install git -y

RUN conda create -n open-mmlab python=3.7 -y

RUN conda activate open-mmlab

RUN conda install pytorch==1.2.0 torchvision==0.4.0 cudatoolkit=10.0 -c pytorch

RUN git clone https://github.com/open-mmlab/mmskeleton.git

WORKDIR mmskeleton

RUN python setup.py develop

WORKDIR mmskeleton/ops/nms/

RUN python setup_linux.py develop
