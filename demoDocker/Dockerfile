FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY helloWorld.conf /etc/nginx/conf.d/helloWorld.conf
RUN mkdir -p /user/share/nginx/html/hello
COPY index.html /user/share/nginx/html/hello/index.html
EXPOSE 80
