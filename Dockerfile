FROM propentatech/portfolios-formation-dev-web2026:latest

# Supprimer la config par défaut (optionnel)
RUN mkdir /usr/share/nginx/html/portfolio-ngoundamroivelfadil-cloud/
RUN rm -rf /usr/share/nginx/html/portfolio-ngoundamroivelfadil-cloud/*

# Copier ton site
COPY . /usr/share/nginx/html/portfolio-ngoundamroivelfadil-cloud/

# Exposer le port
EXPOSE 80

# Lancer nginx
CMD ["nginx", "-g", "daemon off;"]
