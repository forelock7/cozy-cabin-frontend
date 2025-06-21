FROM node:24.2.0-alpine
# Enable corepack (comes with Node >=16.10+)
RUN corepack enable && corepack prepare pnpm@10.12.1 --activate

WORKDIR /app
COPY . .

RUN pnpm install
RUN pnpm run build

CMD ["pnpm", "preview"]
