branch=main
git clone -b $branch https://github.com/NS-ANONYMUS/Ultroid /root/NS-ANONYMUS
cp ultroid/.env /root/NS-ANONYMUS/.env
cd /root/NS-ANONYMUS
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
