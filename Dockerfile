FROM nginx:alpine
EXPOSE 8080
RUN rm -rf /usr/share/nginx/html/*
COPY dist/* /usr/share/nginx/html/
RUN rm /etc/nginx/conf.d/*
COPY nginx.conf /etc/nginx/conf.d/
RUN ls /usr/share/nginx/html
RUN chmod -R 755 /usr/share/nginx/html
CMD [ "nginx", "-g", "daemon off;" ]