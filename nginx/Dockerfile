FROM nginx:alpine
MAINTAINER Nikhil
EXPOSE 80
LABEL this is for nginx application install
RUN rm -rf /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/
RUN chown -R nginx:nginx /usr/share/nginx/html
CMD ["nginx","-g","daemon off;"]
