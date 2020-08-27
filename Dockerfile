FROM nextflowhubcontainers/base
MAINTAINER Shruti Sharma (@sharma-shruti)

#########
### commands
#########

RUN conda install bwa samtools=0.1.19 -y

RUN git clone https://github.com/xiaeryu/RD-Analyzer && cd RD-Analyzer/

WORKDIR /RD-Analyzer/

#CMD ["python2.7", "RD-Analyzer.py"]

ENTRYPOINT ["python2.7", "/RD-Analyzer/RD-Analyzer.py"]


