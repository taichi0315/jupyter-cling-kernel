FROM taichi0315/pyenv-ubuntu

RUN wget https://root.cern.ch/download/cling/cling_2019-01-23_ubuntu18.tar.bz2
RUN bzip2 -d cling_2019-01-23_ubuntu18.tar.bz2
RUN tar xvf cling_2019-01-23_ubuntu18.tar
RUN rm cling_2019-01-23_ubuntu18.tar

ENV PATH /cling_2019-01-23_ubuntu18/bin:$PATH

RUN pip install jupyter

WORKDIR /cling_2019-01-23_ubuntu18/share/cling/Jupyter/kernel
RUN pip install -e .
RUN jupyter-kernelspec install --user cling-cpp11
RUN jupyter-kernelspec install --user cling-cpp14
RUN jupyter-kernelspec install --user cling-cpp17

WORKDIR /home/root