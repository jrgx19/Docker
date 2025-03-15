This is a work in progress as I attempt to clean up my current "production" HomeLab setup. 

This setup incorporates the use of a main/common/system-wide .env file and a per stack .env. Due
to how docker compose handles external .env files, the following command is required to start
the docker-compose.yml stack:
docker compose --env-file ../.env --env-file .env up -d

More information can be found at:
https://github.com/docker/compose/issues/9443
https://github.com/docker/docs/issues/16113
