# Utilisation de l'image officielle Node.js 16 (ou autre version selon votre préférence)
FROM node:16

# Définir le répertoire de travail
WORKDIR /usr/src/app



# Copier le code source de l'application
COPY . .


# Exposer le port 8080
EXPOSE 8080

# Commande pour démarrer l'application Node.js
CMD ["node", "src/server.js"]
