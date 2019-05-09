FROM rocker/tidyverse:3.5.1


MAINTAINER "Alberto Jaimes" yoselerratil@gmail.com

RUN install2.r --error --deps TRUE \
    aws.s3 \
    && installGithub.r -d TRUE \
    hadley/multidplyr


RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    mesa-common-dev \
    libglu1-mesa-dev \
    freeglut3-dev \
    && install2.r --error --deps TRUE \
    igraph

WORKDIR /app
