FROM gitpod/workspace-full-vnc:latest

# Install dependencies
# RUN apt-get update \
#   && apt-get install -y tk-dev tk tcl-dev tcl python3-tk libx11-dev libxkbfile-dev libsecret-1-dev libgconf2–4 libnss3 libasound2-dev twm \
#   && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN apt-get update && apt-get install -y \
  libblas-dev \
  liblapack-dev\
  libatlas-base-dev \
  python3-pip \
  tk-dev \
  python-tk \
  python3-tk \
  python3-matplotlib \
  pkg-config \
  libfreetype6-dev \
  python3.7 \
  && apt-get install -y libx11-dev libxkbfile-dev libsecret-1-dev libnss3 \
  && apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN pyenv install 3.7.3

RUN echo 'alias python="/home/gitpod/.pyenv/versions/3.7.3/bin/python3.7"' >> ~/.bashrc