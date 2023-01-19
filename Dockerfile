FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get -y install wget

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda
RUN rm Miniconda3-latest-Linux-x86_64.sh

ENV CONDA_DIR /opt/conda
ENV PATH $CONDA_DIR/bin:$PATH

RUN conda update -n base -c defaults conda
RUN conda install -c conda-forge ifcopenshell
COPY walls.py /.
COPY 231110AC-11-Smiley-West-04-07-2007.ifc /.
CMD ["python", "walls.py"]