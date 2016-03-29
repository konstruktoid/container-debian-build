
FROM scratch
ADD ./jessie-1603292001.txz /
ENV SHA e29e7557d31d035e2b1ddd4bf937ed5df056a269887f37c871d5e686f6d1b410

ONBUILD RUN apt-get update && apt-get -y upgrade

