#https://dashboard.wpvip.com/me/cli/token

FROM node:current-alpine3.16

RUN apk add --update --no-cache g++ make python3 py3-pip && \
    ln -sf python3 /usr/bin/python

RUN python -V && node -v && npm -v

RUN npm install -g @automattic/vip

ENV DO_NOT_TRACK=1

RUN /usr/local/bin/vip -v

ENTRYPOINT ["/usr/local/bin/vip"]
