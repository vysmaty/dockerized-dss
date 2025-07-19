FROM eclipse-temurin:21-jdk-alpine
LABEL maintainer="vysmaty@users.noreply.github.com"
LABEL "author"="vysmaty"

# Instalation & download & unzip
RUN apk update && apk add --no-cache unzip curl && \
    curl -o /tmp/dss-demo-bundle.zip https://ec.europa.eu/digital-building-blocks/artifact/repository/esignaturedss/eu/europa/ec/joinup/sd-dss/dss-demo-bundle/6.2/dss-demo-bundle-6.2.zip && \
    unzip /tmp/dss-demo-bundle.zip -d /tmp && \
    mv /tmp/dss-demo-bundle-6.2 /dss && \
    chmod +x /dss/apache-tomcat-11.0.4/bin/catalina.sh && \
    rm -rf /tmp/*

# Copy startup script
COPY ./startup.sh /dss/
RUN chmod +x /dss/startup.sh

# Expose Tomcat port
EXPOSE 8080

# Start
ENTRYPOINT [ "/dss/startup.sh" ]
CMD [ "/bin/sh" ]
