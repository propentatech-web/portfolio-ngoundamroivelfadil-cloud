FROM propentatech/portfolios-formation-dev-web2026:latest

RUN mkdir -p /usr/share/nginx/html/portfolio-ngoundamroivelfadil-cloud/
RUN rm -rf /usr/share/nginx/html/portfolio-ngoundamroivelfadil-cloud/*

COPY . /usr/share/nginx/html/portfolio-ngoundamroivelfadil-cloud/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
