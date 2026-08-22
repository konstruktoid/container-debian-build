FROM debian:stable-slim@sha256:1710bde34461551a19a47c787885ec9ad7058d9a5bead2affb8d088fa2f8502b

LABEL org.opencontainers.image.title="debianbuild" \
      org.opencontainers.image.description="debootstrap based Debian and Ubuntu base image generator" \
      org.opencontainers.image.authors="Thomas Sjögren <konstruktoid@users.noreply.github.com>" \
      org.opencontainers.image.source="https://github.com/konstruktoid/container-debian-build" \
      org.opencontainers.image.base.name="docker.io/library/debian:stable-slim"

ENV BUILDAREA=/opt/buildarea

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

# sudo and openssl are gone: buildeb.sh already requires root and now uses
# sha256sum instead of openssl for the tarball checksum.
RUN apt-get update && \
    apt-get --assume-yes upgrade && \
    apt-get --assume-yes install --no-install-recommends \
      ca-certificates \
      debian-archive-keyring \
      debootstrap \
      ubuntu-keyring \
      xz-utils && \
    apt-get --assume-yes clean && \
    apt-get --assume-yes autoremove && \
    mkdir -p "${BUILDAREA}" && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
      /usr/share/doc /usr/share/doc-base \
      /usr/share/man /usr/share/locale /usr/share/zoneinfo

COPY --chmod=0755 ./buildeb.sh /buildeb.sh

WORKDIR $BUILDAREA
VOLUME ["/opt/buildarea"]

ENTRYPOINT ["/buildeb.sh"]
CMD []
