docker build -t nginxloadbalance .
docker tag nginxloadbalance dwlferrier/myflix:nginxloadbalance
docker push dwlferrier/myflix:nginxloadbalance
docker stop balance
docker rm balance
docker run -d -p 80:80 --name balance -v "$PWD/website:/var/www/html/website" dwlferrier/myflix:nginxloadbalance