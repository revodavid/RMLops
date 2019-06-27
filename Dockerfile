FROM rocker/r-base:3.6.0

RUN apt-get update -qq 
  && install2.r --error \
    --deps TRUE \
    xgboost