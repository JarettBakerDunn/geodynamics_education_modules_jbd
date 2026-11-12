FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    build-essential \
    git \
    curl \
    libcdd-dev \
    libgmp-dev 


RUN pip3 install --break-system-packages --upgrade jupyterlab matplotlib numpy pandas scikit-learn shap ipywidgets burnman autograd pycddlib cvxpy;

RUN useradd \
  --create-home \
  ML_geoscience 

USER ML_geoscience

WORKDIR /home/ML_geoscience

RUN git clone --no-checkout --sparse https://github.com/geodynamics/geodynamics_education_modules.git;
RUN cd geodynamics_education_modules; git sparse-checkout set assets source/ML_geoscience create_config.sh source/tools; git checkout main;

WORKDIR /home/ML_geoscience/geodynamics_education_modules

USER root
RUN chmod +x create_config.sh
USER ML_geoscience
RUN ./create_config.sh

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8000", "--no-browser", "--allow-root", "--ServerApp.token=''"]
