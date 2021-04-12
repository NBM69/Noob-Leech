FROM lzzy12/mega-sdk-python:latest

RUN mkdir ./app
RUN chmod 777 ./app
WORKDIR /app

RUN apt -qq update

RUN apt -qq install -y git aria2 wget curl busybox python3 ffmpeg python3-pip

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
CMD ["bash","start.sh"]
