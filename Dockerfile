FROM node:22.14.0-alpine
WORKDIR /app
COPY . .
RUN pnpm install && pnpm run build
CMD ["pnpm", "preview"]
EXPOSE 4173
