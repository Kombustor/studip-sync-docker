
# studip-sync-docker

[woefe/studip-sync](https://github.com/woefe/studip-sync) dockerized 🐳

## Docker Hub: [kombustor/studip-sync](https://hub.docker.com/r/kombustor/studip-sync)

## Commands

### Create config.json

`docker run --rm -it -v ${PWD}/config/:/root/.config/studip-sync/ kombustor/studip-sync studip-sync --init`

### Sync

`docker run --rm -it -v ${PWD}/config.json:/root/.config/studip-sync/config.json -v ${PWD}/data:/data kombustor/studip-sync`