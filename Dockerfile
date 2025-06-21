FROM node:24.2.0-alpine

WORKDIR /app
COPY . .

RUN npm install
RUN npm run build

CMD ["npm", "preview"]
