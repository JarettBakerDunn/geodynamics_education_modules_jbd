FROM geodynamics/aspect:v3.0.0 AS aspect

USER root

RUN usermod -l geodynamics dealii

ENV DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    jupyterhub \
    libgeos-dev 


RUN pip3 install --upgrade pyvista[jupyter] imageio numpy pandas scipy meshio tables jupyterlab matplotlib burnman autograd ipywidgets widgetsnbextension;
RUN apt-get remove -y python3-matplotlib
# upgrading pip after installing everything else seems to be required to avoid some version issues.
RUN pip3 install --upgrade pip
RUN pip3 install cartopy;

RUN echo "geodynamics:a" | chpasswd

RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension

USER geodynamics

WORKDIR /home/dealii/

RUN git clone --no-checkout --sparse https://github.com/geodynamics/geodynamics_education_modules.git;
RUN cd geodynamics_education_modules; git sparse-checkout set assets source/geodynamics source/tools; git checkout main;

RUN python3 -m cartopy.feature.download physical;

WORKDIR /home/dealii/geodynamics_education_modules/source/

CMD ["jupyterhub"]

USER root
# THIS IS A TEST
