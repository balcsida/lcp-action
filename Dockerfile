FROM alpine:3.11.6

RUN apk add --no-cache bash curl

RUN curl https://cdn.liferay.cloud/lcp/stable/latest/install.sh -fsSL | sudo bash 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
