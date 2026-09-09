# Environnement Node.js impose par le sujet
FROM node:16-alpine

WORKDIR /app

# Les dependances d'abord : cette couche reste en cache tant que
# package.json ne change pas, meme si server.js est modifie
COPY package*.json ./
RUN npm install --omit=dev

COPY server.js .

EXPOSE 3000

CMD ["node", "server.js"]
