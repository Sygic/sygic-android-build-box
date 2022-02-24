FROM mingc/android-build-box:1.24.0
USER root

# RUN apt-get update && apt-get install -y vim

COPY ROOT/ /

RUN addgroup --quiet --gid 3142 builder
RUN adduser --disabled-password --quiet --uid 3142 --gid 3142 --gecos "CI Builder,3142,," builder


USER builder
#RUN mkdir ~/.ssh
#RUN ssh-keyscan -t rsa gitlab.com >> ~/.ssh/known_hosts
