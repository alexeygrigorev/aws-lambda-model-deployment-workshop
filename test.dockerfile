FROM amazonlinux

WORKDIR /tflite

RUN yum groupinstall -y development
RUN yum install -y python3.7 python3-devel
RUN pip3 install boto3

WORKDIR /app

COPY build.zip .
RUN unzip build.zip

COPY test.py test.py

ENV AWS_DEFAULT_REGION="local"
ENV AWS_ACCESS_KEY_ID="KEY"
ENV AWS_SECRET_ACCESS_KEY="SECRET"

ENTRYPOINT [ "python3", "test.py" ]
