FROM marxin/gcc-docker
MAINTAINER Martin Liška

WORKDIR /abuild/inkscape
ENV CXXFLAGS="-flto=$(nproc)"
ENV LDFLAGS="-flto=$(nproc)"
run ./configure
make -j$(nproc) V=1
