FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY dist/ /usr/share/nginx/html/

EXPOSE 3001
RUN sed -i 's/listen       80;/listen 3001;/' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
