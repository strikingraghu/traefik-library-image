FROM scratch
COPY certs/ca-certificates.crt /etc/ssl/certs/
COPY traefik /
EXPOSE 80
VOLUME ["/tmp"]
ENTRYPOINT ["/traefik"]

# Metadata
LABEL org.opencontainers.image.vendor="Containous" \
      org.opencontainers.image.url="https://traefik.io" \
      org.opencontainers.image.title="Traefik" \
      org.opencontainers.image.description="A modern reverse-proxy" \
      org.opencontainers.image.version="$VERSION" \
			org.opencontainers.image.documentation="https://docs.traefik.io"
