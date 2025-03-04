FROM ubuntu:jammy

# Update packages to their latest versions
RUN apt update && apt upgrade -y

# Install wget and gpg for adding intel repo
RUN apt install -y wget gpg

# Add Intel Ubuntu repo
RUN wget -qO - https://repositories.intel.com/gpu/intel-graphics.key | \
    gpg --dearmor --output /usr/share/keyrings/intel-graphics.gpg && \
    echo "deb [arch=amd64,i386 signed-by=/usr/share/keyrings/intel-graphics.gpg] https://repositories.intel.com/gpu/ubuntu jammy client" | \
    tee /etc/apt/sources.list.d/intel-gpu-jammy.list && \
    apt update

# Install Level-Zero
RUN apt install -y clinfo intel-opencl-icd intel-level-zero-gpu level-zero level-zero-dev

# Project related
RUN apt install -y python3 python3-pip python3-venv git espeak-ng

ENTRYPOINT ["/bin/bash"]
