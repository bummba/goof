FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY mime.types /etc/nginx/mime.types
COPY /app/dist /usr/share/nginx/html
RUN     chown -R nginx /var/cache/nginx && \
        chown -R nginx /var/log/nginx && \
        chown -R nginx /etc/nginx
RUN touch /var/run/nginx.pid && \
        chown -R nginx /var/run/nginx.pid
USER nginx
EXPOSE 8080
