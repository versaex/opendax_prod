sleep 10
cd /root/opendax-prod
git pull 
source /usr/local/rvm/scripts/rvm
rake render:config
docker service rm opendax_frontend || true 
docker stack deploy -c compose/frontend.yaml opendax 