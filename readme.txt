## building a dockerfile = creating a docker image
docker-compose build
## no-cache to build completly new image
docker-compose build --no-cache

## running a docker-compose container(s) 
docker-compose up -d

## removing a docker container(s)  ( need to be in same directory, where is docker-compose.yml )
docker-compose down

## stop a container
docker stop <name> ## stop container, if container is set to restart=always, after server restart will become up again

## start a container
docker start <name> 

## list of containers
docker ps ## list of RUNNING containers
docker ps -a ## list of ALL containers, contains those which are stopped
docker ps --filter "name=magic" ## list of all RUNNING ccontainers where name = magic

## observing docker logs
docker logs <container_name>

example => docker logs magic_django
additional parameters can be added => docker logs magic_django --tail 100 -f ## last 100 rows with updates

## run scripts in docker from server
docker exec -it <container_name> <script>

examples => docker exec -it magic_django bash ## open bash command line
docker exec -it magic_db mariadb -u root -p ## open mariadb shell
docker exec -it magic_django cat /div_app/nohup.out ## read file nohup.out
