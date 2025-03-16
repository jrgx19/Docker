There are various steps to be taken on the host system prior to running the innitial setup:
    - Increase max_map_count on your host (Linux)
        - https://documentation.wazuh.com/current/deployment-options/docker/docker-installation.html#increase-max-map-count-on-your-host-linux

    - Generate certs
        - docker compose --env-file ../.env --env-file .env -f generate-indexer-certs.yml run --rm generator

    - Update user/API credentials prior to deploying the stack
        - https://documentation.wazuh.com/current/deployment-options/docker/wazuh-container.html#change-the-password-of-wazuh-users

This setup incorporates the use of a main/common/system-wide .env file and a per stack .env. Due to how docker compose handles external .env files, the following command is required to start the docker-compose.yml stack:
docker compose --env-file ../.env --env-file .env up -d

More information can be found at:
https://github.com/docker/compose/issues/9443
https://github.com/docker/docs/issues/16113        