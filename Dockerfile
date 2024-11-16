FROM alpine:latest
RUN apk add make g++ valgrind bash

RUN echo 'alias vg="valgrind --leak-check=full"' > /root/.bashrc

CMD ["bash"]

