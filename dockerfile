FROM nginx
COPY index.html /home/vmadmin/webservice/index.html
COPY style.css /home/vmadmin/webservice/style.css
EXPOSE 8080
