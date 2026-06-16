FROM geodynamics/aspect:v3.0.0 AS aspect

USER root

ENV DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC
RUN apt update && \
    apt install -yq python3 python3-venv jupyterhub

RUN echo "dealii:a" | chpasswd

USER dealii

WORKDIR /home/dealii/

RUN git clone https://github.com/geodynamics/geodynamics_education_modules.git;

WORKDIR /home/dealii/geodynamics_education_modules/source/

CMD ["jupyterhub"]

