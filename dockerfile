FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-runtime

WORKDIR /

RUN apt-get update -y && apt-get install git -y

RUN apt-get install libgl1-mesa-glx -y

RUN git clone https://github.com/yysijie/st-gcn.git

RUN pip install -r /st-gcn/requirements.txt


