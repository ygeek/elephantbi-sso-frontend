indexFile=/usr/share/nginx/html/index.html
# sed -i "s/http:\/\/localhost:8686/${BACKEND_URL}/g" $indexFile
sed -i "s/BK_URL/${SSO_URL}/g" $indexFile
sed -i "s/suite_id/${WX_SUITE_ID}/g" $indexFile
sed -i "s/WX_CORP_ID/${WX_CORP_ID}/g" $indexFile

nginx -g "daemon off;"