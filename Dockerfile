
FROM scratch
ADD ./wheezy-1603291952.txz /
ENV SHA 9ccc884be3259363ac04cef29c2804707b423b1b533683fbb89d524e5825da3e

ONBUILD RUN apt-get update && apt-get -y upgrade

