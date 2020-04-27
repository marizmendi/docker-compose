FROM python:alpine

ENV PYTHONUNBUFFERED="1"

RUN /usr/local/bin/pip install --no-cache-dir "cartography"

COPY docker-entrypoint.sh /cartography/docker-entrypoint.sh
RUN chmod +x /cartography/docker-entrypoint.sh

ENTRYPOINT ["/cartography/docker-entrypoint.sh"]
