FROM alpine:3.8

LABEL maintainer="Yumin Wu"

RUN apk update && apk upgrade \
  && apk add ca-certificates tzdata \
  && rm -rf /var/cache/apk/* /tmp/* \
  && echo $' \n\
alias ll=\'ls -l\' \n\
' >> /etc/bashrc \
  && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && echo "Asia/Shanghai" > /etc/timezone \
  && apk del tzdata
