chmod +x scripts/package.sh
chmod +x scripts/ls.sh
docker-compose run --rm -e XXX=test python sh -c "/work/scripts/package.sh"