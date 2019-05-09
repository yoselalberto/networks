FROM rocker/tidyverse:3.5.1


MAINTAINER "Alberto Jaimes" yoselerratil@gmail.com

RUN install2.r --error --deps TRUE \
    aws.s3 \
    igraph \
    && installGithub.r -d TRUE \
    hadley/multidplyr


RUN install2.r --error --deps TRUE \
    tidygraph
