FROM rocker/tidyverse:3.5.1


MAINTAINER "Alberto Jaimes" yoselerratil@gmail.com

RUN install2.r --error --deps TRUE \
    igraph \
    DiagrammeR \
    tidygraph \
    aws.s3 \
    && installGithub.r -d TRUE \
    hadley/multidplyr
