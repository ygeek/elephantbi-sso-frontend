FROM nginx:alpine

WORKDIR /root/webapp

# Copy file
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY container_start.sh /start.sh
COPY . /root/webapp/

# Build Dist
RUN mkdir -p /run/nginx && \
    rm -f /etc/nginx/sites-enabled/* && \
    mkdir -p /usr/share/nginx/html && \
    cp -r ./index.html /usr/share/nginx/html

EXPOSE 80

# Start Script
CMD /bin/sh /start.sh
