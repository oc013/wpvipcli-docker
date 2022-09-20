#https://dashboard.wpvip.com/me/cli/token

FROM node:current-alpine3.16

RUN node -v && npm -v

RUN npm install -g @automattic/vip

RUN /usr/local/bin/vip -v

ENTRYPOINT ["/usr/local/bin/vip"]
