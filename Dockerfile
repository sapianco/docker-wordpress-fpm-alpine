FROM wordpress:6.2.2-fpm-alpine

ENV USER=sapian
ENV UID=1001
ENV GID=1001

RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/home/$USER" \
    --uid "$UID" \
    "$USER"

USER ${USER}
