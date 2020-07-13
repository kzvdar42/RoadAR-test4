FROM python:3.6-slim-buster

USER root

# Install needed packages.
RUN pip install --no-cache-dir \
    numpy pandas opencv-python tqdm \
    ipykernel jupyter \
    tqdm matplotlib \
    torch==1.5.1+cpu torchvision==0.6.1+cpu -f https://download.pytorch.org/whl/torch_stable.html \
    # Install dependencies.
    && apt-get update \
    && apt-get install --no-install-recommends -y libglib2.0-0 libsm6 libxrender1 libxext6 wget \
    # Clean up.
    && apt-get -y autoremove \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf ~/.cache/*

COPY . /home/test4
# RUN chmod +x /home/test4/docker/run_jupyter.sh
    # && /home/test4/config/download_weights.sh

WORKDIR /home

USER $NB_USER

# Jupyter has issues with being run directly:
#   https://github.com/ipython/ipython/issues/7062
# We just add a little wrapper script.
CMD ["/home/test4/docker/run_jupyter.sh"]
