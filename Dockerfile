# https://hub.docker.com/r/oven/bun
FROM oven/bun:1.1.21-slim

WORKDIR /app

EXPOSE 8080

ENV NODE_ENV=production

RUN apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends ca-certificates libssl-dev

COPY bun* index.ts package.json ./

RUN bun install --production

CMD PORT=8080 bun --bun index.ts
