FROM python:3-slim

WORKDIR /app
# System Prerequistes
RUN apt-get update

# System Depedencies
RUN apt-get install -y --no-install-recommends \
  gettext git curl vim gnupg unzip ca-certificates apt-transport-https lsb-release \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY setup.sh setup_atlantis.sh entrypoint.sh /app/
RUN chmod +x /app/*.sh
RUN ./setup.sh
RUN ./setup_atlantis.sh

# https://github.com/runatlantis/atlantis/blob/master/Dockerfile.dev#L3
ENV DEFAULT_CONFTEST_VERSION=0.30.0

# CMD [ "sleep", "3600" ]
# CMD ["atlantis", "server"]
ENTRYPOINT [ "/app/entrypoint.sh" ]