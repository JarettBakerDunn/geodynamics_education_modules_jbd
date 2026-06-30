FROM geodynamics/aspect:v3.0.0 AS aspect

USER root

ENV DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    jupyterhub \
    libgeos-dev 


RUN pip3 install --upgrade pyvista[jupyter] imageio numpy pandas scipy meshio tables jupyterlab matplotlib burnman autograd;
RUN apt-get remove -y python3-matplotlib
# upgrading pip after installing everything else seems to be required to avoid some version issues.
RUN pip3 install --upgrade pip
RUN pip3 install cartopy;

RUN echo "dealii:a" | chpasswd

USER dealii

WORKDIR /home/dealii/

RUN git clone https://github.com/geodynamics/geodynamics_education_modules.git;

RUN python3 -m cartopy.feature.download physical;

WORKDIR /home/dealii/geodynamics_education_modules/source/

CMD ["jupyterhub"]

USER root
