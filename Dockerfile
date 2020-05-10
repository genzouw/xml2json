FROM alpine:3.11.3

LABEL maintainer "genzouw <genzouw@gmail.com>"

RUN apk add \
  python3 \
  python3-dev \
  ;

RUN pip3 install \
  --upgrade pip \
  && pip3 install https://github.com/hay/xml2json/zipball/master

ENTRYPOINT ["xml2json"]

CMD ["--strip_namespace", "--strip_newlines", "--strip_text", "--pretty"]
