
FROM scratch
ADD ./jessie-1605151727.txz /
ENV SHA 955b0b9510e2bc567760a063206a5af3bff733cea7ab718b02d227e3017939df

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

