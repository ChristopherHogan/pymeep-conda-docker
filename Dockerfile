FROM continuumio/miniconda3

RUN apt-get -y update
RUN apt-get install -y build-essential guile-2.0-dev gfortran libpcre3-dev

RUN wget http://prdownloads.sourceforge.net/swig/swig-3.0.8.tar.gz
RUN tar xf swig-3.0.8.tar.gz
RUN cd swig-3.0.8 && ./configure && make && make install && cd ..

RUN conda install -y conda-build anaconda-client

