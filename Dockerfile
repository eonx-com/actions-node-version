FROM node:12.10.0

LABEL maintainer="Jy Kingston <jy.kingston@eonx.com>"

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]