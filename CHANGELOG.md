# [6.4.0](https://github.com/vysmaty/dockerized-dss/pkgs/container/dockerized-dss) (2026-04-12)

## Changes

### 6.4.0

2026-04-12: Bump DSS version to 6.4 and Tomcat to 11.0.18, updated Dockerfile and startup script accordingly.

## Features

- **docker:** Upgrade base image to `eclipse-temurin:21-jdk-alpine` and DSS bundle to `6.4`

- **docker:** Upgrade Tomcat to version `11.0.18`

- **docker:** Expose port `8080`

## Refactor

- **docker:** Consolidate installation and download steps, add cleanup

- **docker:** Ensure `startup.sh` has executable permissions

- **docker:** Update `startup.sh` to reflect new Tomcat version and direct `catalina.sh run`
