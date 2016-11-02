
FROM scratch
ADD ./jessie-1611022048.txz /
ENV SHA 4e05a85879c19119493558405b92c30f67731f64569514a03b91e2eb7a086be1

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

