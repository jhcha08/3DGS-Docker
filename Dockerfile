FROM nvcr.io/nvidia/pytorch:22.06-py3

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    nano \
    git \
    libx11-6 \
    libgl1-mesa-glx \
    g++ \
    libglew-dev \
    libassimp-dev \
    libboost-all-dev \
    libgtk-3-dev \
    libopencv-dev \
    libglfw3-dev \
    libavdevice-dev \
    libavcodec-dev \
    libeigen3-dev \
    libxxf86vm-dev \
    libembree-dev \
    colmap \
    imagemagick \
    ffmpeg \
    meshlab && \
    rm -rf /var/lib/apt/lists/*

# Install Python packages
RUN pip install plyfile tqdm torch==1.13.1

# Command to run the container
CMD ["/bin/bash"]