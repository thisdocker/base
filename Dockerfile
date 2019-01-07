FROM alpine:3.7

LABEL maintainer="Yumin Wu"

RUN apk update && apk upgrade \
  && apk add ca-certificates \
  && rm -rf /var/cache/apk/* /tmp/* \
  && echo $' \n\
alias ll=\'ls -l\' \n\
' >> /etc/bashrc
