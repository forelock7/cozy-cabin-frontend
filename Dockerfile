FROM node:v22.14.0
WORKDIR /app
COPY . .
RUN pnpm install && pnpm run build
CMD ["pnpm", "preview"]
EXPOSE 4173
