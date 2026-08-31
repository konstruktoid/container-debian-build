FROM debian:stable-slim@sha256:04634311a8d5fc442b6eb06d792293c4f3e2268652ca7634e00ce8ef5cc0a28a

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
# Packages are deliberately unpinned: this image exists to carry the newest
# patched debootstrap and keyrings. See "Reproducibility" in README.md.
# hadolint ignore=DL3008
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

# No USER instruction on purpose. debootstrap has to mknod device nodes, mount
# /proc and chroot into the target, and buildeb.sh refuses to start as anything
# but uid 0. The container is a build tool that is run and discarded, not a
# service. See "Privileges" in README.md.
ENTRYPOINT ["/buildeb.sh"]
CMD []
