FROM alpine:3.5 AS base
RUN apk add --no-cache nodejs-current tini
WORKDIR /root/chat
ENTRYPOINT ["/sbin/tini", "--"]
COPY . .
FROM base AS dependencies
RUN npm set progress=false && npm config set depth 0