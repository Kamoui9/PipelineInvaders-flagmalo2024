FROM docker:20.10.24-dind

RUN apk add --no-cache gitlab-runner curl bash
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]