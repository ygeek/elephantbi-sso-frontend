indexFile=/usr/share/nginx/html/index.html
sed -i "s/BACKEND_URL/${BACKEND_URL}/g" $indexFile
sed -i "s/BK_URL/${SSO_URL}/g" $indexFile


nginx -g "daemon off;"