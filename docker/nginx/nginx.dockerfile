FROM nginx:latest
LABEL Author="Diego Delmiro"
ADD ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT [ "nginx" ]
CMD [ "-g", "daemon off;" ]