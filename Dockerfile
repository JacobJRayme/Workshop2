FROM alpine:3.5 AS base
RUN apk add --no-cache nodejs-current tini
WORKDIR /root/chat
ENTRYPOINT ["/sbin/tini", "--"]
COPY . .

FROM base AS dependencies
RUN npm set progress=false && npm config set depth 0
RUN npm install --only=production
RUN cp -R node_modules prod_node_modules
RUN npm install
 
FROM base AS release
COPY --from=dependencies /root/chat/prod_node_modules ./node_modules
COPY . .
EXPOSE 80
CMD node backend.js
