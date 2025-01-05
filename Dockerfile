FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    build-essential \
    valgrind \
    libreadline-dev \
    && apt-get clean

RUN echo 'alias vg="valgrind --leak-check=full"' > /root/.bashrc

WORKDIR /workspace

CMD ["bash"]
