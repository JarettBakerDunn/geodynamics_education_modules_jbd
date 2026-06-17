FROM geodynamics/aspect:v3.0.0 AS aspect

USER root

ENV DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC
RUN apt update && \
    apt install -yq python3 python3-venv jupyterhub

RUN echo "dealii:a" | chpasswd

# Create a venv to install packages into
RUN python3 -m venv /opt/venv
# "Activate" the venv, so `jupyterhub-singleuser` can be found when the container runs
ENV PATH /opt/venv/bin:${PATH}
# Install jupyterhub as well as at least one jupyter frontend
RUN /opt/venv/bin/pip install jupyterlab

USER dealii

WORKDIR /home/dealii/

RUN git clone https://github.com/geodynamics/geodynamics_education_modules.git;

WORKDIR /home/dealii/geodynamics_education_modules/source/

CMD ["jupyterhub"]

