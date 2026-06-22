FROM geodynamics/aspect:v3.0.0 AS aspect

USER root

ENV DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    jupyterhub \
    libgeos-dev 

RUN pip3 install --upgrade pyvista[jupyter] imageio numpy pandas scipy meshio tables cartopy jupyterlab matplotlib burnman autograd;
RUN apt-get remove -y python3-matplotlib
RUN echo "dealii:a" | chpasswd

USER dealii

WORKDIR /home/dealii/

RUN git clone https://github.com/geodynamics/geodynamics_education_modules.git;

WORKDIR /home/dealii/geodynamics_education_modules/source/

CMD ["jupyterhub"]

USER root
