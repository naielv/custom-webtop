ARG SUNSHINE_VERSION=latest
ARG SUNSHINE_OS=debian-bookworm
FROM lizardbyte/sunshine:${SUNSHINE_VERSION}-${SUNSHINE_OS}

ENTRYPOINT sunshine
