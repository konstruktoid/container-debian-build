
FROM scratch
ADD ./wheezy-1604052037.txz /
ENV SHA f72f74e672c4a41b5c71b103b482d4592c71a4c86b7212c814a91415d7ce0e5a

ONBUILD RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

