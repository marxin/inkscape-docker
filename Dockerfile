FROM marxin/gcc-docker
MAINTAINER Martin Liška

WORKDIR /abuild/inkscape-0.48.5
ENV CXXFLAGS "-flto=$(nproc)"
ENV LDFLAGS "-flto=$(nproc)"
RUN ./configure
RUN make -j$(nproc) V=1
