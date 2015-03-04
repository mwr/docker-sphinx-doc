FROM ubuntu:trusty
MAINTAINER Matthias Walter

# 
RUN apt-get update
RUN apt-get install -y texlive-latex3 texlive-latex-base texlive-lang-german texlive-latex-extra texlive-latex-recommended texlive-fonts-recommended
RUN apt-get install -y python-pip
RUN apt-get install -y default-jre
RUN apt-get install -y graphviz
# RUN pip install Sphinx==1.3b2
RUN pip install Sphinx==1.2b1

# ENTRYPOINT ["make"]