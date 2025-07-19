# [2.0.0](https://github.com/vysmaty/dockerized-dss/pkgs/container/dockerized-dss) (2025-07-19)

### Features

-   **docker:** Upgrade base image to `eclipse-temurin:21-jdk-alpine` and DSS bundle to `6.2`
    
-   **docker:** Upgrade Tomcat to version `11.0.4`
    
-   **docker:** Expose port `8080`
    

### Refactor

-   **docker:** Consolidate installation and download steps, add cleanup
        
-   **docker:** Ensure `startup.sh` has executable permissions
    
-   **docker:** Update `startup.sh` to reflect new Tomcat version and direct `catalina.sh run`
