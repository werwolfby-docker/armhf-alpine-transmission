FROM container4armhf/armhf-alpine
MAINTAINER Alexander Puzynia <werwolf.by@gmail.com>

RUN apk update && \
    apk upgrade && \
    apk add transmission-daemon

CMD ["transmission-daemon", "--foreground", "--config-dir", "/etc/transmission"]