FROM alpine:latest
LABEL author="Jason Etcovitch <jasonetco@github.com>, Adam Williams <gha@adamwilliams.eu>"

LABEL "com.github.actions.name"="Upload to Release (read from fn.txt)"
LABEL "com.github.actions.description"="Uploads a file to a new release, reading the filename from the filesystem."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="red"

RUN	apk add --no-cache \
  bash \
  ca-certificates \
  curl \
  jq

COPY upload-to-release /usr/bin/upload-to-release

ENTRYPOINT ["upload-to-release"]
