FROM bloknodes/base-nodes:dogecoin-1.14.7

ENV NETWORK=testnet

ARG CRYPTO_ARCH=x86_64
ENV CRYPTO_ARCH=$CRYPTO_ARCH

COPY bin/run.sh /usr/bin/run.sh
RUN chmod +x /usr/bin/run.sh

#COPY configs/mainnet.conf /etc/dogecoin/mainnet.conf
COPY configs/testnet.conf /etc/dogecoin/testnet.conf

CMD ["/usr/bin/run.sh"]
