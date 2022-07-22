FROM certbot/certbot
LABEL org.opencontainers.image.source="https://github.com/tya/certbot-dns-godaddy"
LABEL maintainer="ty.alexander@gmail.com"
ENV PYTHONIOENCODING="UTF-8"

COPY . src/certbot-dns-godaddy

RUN pip install -U pip
RUN pip install --no-cache-dir --use-feature=in-tree-build src/certbot-dns-godaddy

ENTRYPOINT ["/usr/bin/env"]
