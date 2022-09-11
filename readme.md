# Docker Multi-stage build

## Single-stage Build

#### Creating the image

```bash
docker build -t single-stage -f ./docker/single-stage.dockerfile .
```

#### Running the container

```bash
docker run --rm --name single-stage -p 3000:3000 single-stage:latest
```

## Multi-stage Build

#### Creating the image

```bash
docker build -t multi-stage -f ./docker/multi-stage.dockerfile . \
&& docker image prune -f --filter label=stage=build
```


#### Running the container

```bash
docker run --rm --name multi-stage -p 3000:3000 multi-stage:latest
```
