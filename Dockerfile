FROM certbot/certbot:v2.6.0
LABEL org.opencontainers.image.source="https://github.com/tya/certbot-dns-godaddy"
LABEL maintainer="ty.alexander@gmail.com"
ENV PYTHONIOENCODING="UTF-8"

COPY . src/certbot-dns-godaddy

RUN pip install --root-user-action=ignore -U pip
RUN pip install --root-user-action=ignore --no-cache-dir src/certbot-dns-godaddy

ENTRYPOINT ["/usr/bin/env"]
