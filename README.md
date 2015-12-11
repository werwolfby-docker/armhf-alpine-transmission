# armhf-alpine-transmission

ARM hf compatible Docker Image with a minimal `tranmsission` daemon.

## Details
- [Source Project Page](https://github.com/werwolfby/docker-armhf-alpine-transmission)
- [Source Repository](https://github.com/werwolfby/docker-armhf-alpine-transmission)
- [Dockerfile](https://github.com/werwolfby/docker-armhf-alpine-transmission/blob/master/Dockerfile)

## Start a transmission server
```bash
docker run -d --name my-transmission \
  -p 9091:9091 \
  -p 51413:51413/tcp \
  -p 51413:51413/udp \
  -v /path/to/complete/folder:/root/Downloads \
  -v /path/to/store/transmission/settings/and/intermediate/results:/etc/transmission \
  werwolfby/armhf-alpine-transmission
```

Stop just created transmission daemon by:
```bash
docker stop my-transmission
```

Edit file in `/path/to/store/transmission/settings/and/intermediate/results/settings.json` and specify your settings.
At least you have to specify *rpc_user* and *rpc_password*. All other settings can be default.

Start server:
```bash
docker run my-transmission
```

## How to create this image

Run all commands from within the project root directory.

### Create image
Create folder. Folder name will be used for image name by default. 
Checkout this repository. And run.
```bash
git clone https://github.com/werwolfby/docker-armhf-alpine-transmission .
make build
```

Copy `env.template` to `env`. Edit the file settings to your particular settings.
Specify path for downloading torrents and path for storing intermediate settings and results.
```bash
TORRENTS=/path/to/complete/folder
SETTINGS=/path/to/store/transmission/settings/and/intermediate/results
```

### Run container from image
```bash
make run
```

Stop just created transmission daemon by:
```bash
make stop
```

Edit file in `/path/to/store/transmission/settings/and/intermediate/results/settings.json` and specify your settings.
At least you have to specify *rpc_user* and *rpc_password*. All other settings can be left default.

Start server:
```bash
make start
```
