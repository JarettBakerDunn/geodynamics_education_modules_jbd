FROM geodynamics/aspect:v3.0.0

USER root

# Modify the ID of existing dealii user, the new user jovyan needs to have ID 1000 to work with Binder
RUN groupmod -g 1100 dealii && \
    usermod -u 1100 -g 1100 dealii

# root user is not allowed in binder
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    ${NB_USER}
 
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*
    
RUN pip install numpy pandas matplotlib scipy meshio;
    
# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
RUN python3 -m pip install --no-cache-dir notebook jupyterlab
USER ${NB_USER}

WORKDIR /home/jovyan
