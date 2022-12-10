docker rmi -f dockle:1.0
docker build -t dockle:1.0 .
docker run -d -it -p 80:81 --mount type=bind,source="$(pwd)"/nginx/,target=/etc/nginx/conf.d/ dockle:1.0 bash