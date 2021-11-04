FROM alpine:3.14

RUN apk update && apk add --no-cache curl jq

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
