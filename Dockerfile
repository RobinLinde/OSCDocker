FROM python:alpine
MAINTAINER Robin van der Linde (robin.vanderlinde@gmail.com)
RUN apk add --no-cache git
RUN git clone https://github.com/openstreetcam/upload-scripts.git
RUN cd upload-scripts && pip3 install -r requirements.txt
ENTRYPOINT /bin/sh