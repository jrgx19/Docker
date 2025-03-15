There are various steps to be taken on the host system prior to running the innitial setup:
Increase max_map_count on your host (Linux)
    - https://documentation.wazuh.com/current/deployment-options/docker/docker-installation.html#increase-max-map-count-on-your-host-linux

    - Generate certs
        - docker compose --env-file ../.env --env-file .env -f generate-indexer-certs.yml run --rm generator