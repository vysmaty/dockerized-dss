# Docker container for Digital Signature Service

![Docker Publish](https://github.com/vysmaty/dockerized-dss/actions/workflows/docker-publish.yml/badge.svg)

This Dockerfile will provide the current Digital Signature Service Demo in version 6.2 aka DSS Demonstration WebApp

@see [eSignature Service](https://ec.europa.eu/digital-building-blocks/sites/display/DIGITAL/Digital+Signature+Service+-++DSS)

## Usage

### Docker run

`docker run --rm --ti -p 8080:8080 ghcr.io/vysmaty/dockerized-dss:latest`

### Docker Compose

Create a `docker-compose.yml` file with the following content:

```yaml
services:
  dss:
    image: ghcr.io/vysmaty/dockerized-dss:latest
    ports:
      - '8080:8080'
```

See docker-compose.yml for more options.
