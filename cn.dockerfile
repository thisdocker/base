FROM alpine:3.8

LABEL maintainer="Yumin Wu"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
  # mirrors.ustc.edu.cn
  && apk update && apk upgrade \
  && apk add ca-certificates tzdata \
  && rm -rf /var/cache/apk/* /tmp/* \
  && echo $' \n\
alias ll=\'ls -l\' \n\
' >> /etc/profile \
  && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && echo "Asia/Shanghai" > /etc/timezone \
  && apk del tzdata

CMD ["/bin/sh","-l"]
