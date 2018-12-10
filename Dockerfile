FROM sunhao2018/sip-docker:latest
MAINTAINER Hao Sun and Sijie Chen<sunhao2018@mail.tsinghua.edu.cn >
LABEL authors="sunhao2018@mail.tsinghua.edu.cn && chensj16@mails.tsinghua.edu.cn" \
    description="Docker image containing base requirements for the SIP pipeline"

COPY environment.yml /
COPY Rpackages.R /
RUN conda env create -f /environment.yml && conda clean -a
RUN Rscript /Rpackages.R
