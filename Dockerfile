FROM marxin/gcc-docker
MAINTAINER Martin Liška

WORKDIR /abuild/inkscape-0.48.5
ENV CFLAGS -flto=4
ENV CXXFLAGS -flto=4
ENV LDFLAGS -flto=4

RUN ./configure
RUN make -j$(nproc) V=1
