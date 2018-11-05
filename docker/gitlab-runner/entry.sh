#!/usr/bin/env bash
/usr/bin/dumb-init /entrypoint install
/usr/bin/dumb-init /entrypoint register -n \
  --url $URL \
  --registration-token $TOKEN \
  --executor docker \
  --description "Docker Runner" \
  --docker-image "docker:stable" \
  --docker-volumes /var/run/docker.sock:/var/run/docker.sock \
  --docker-privileged && \
/usr/bin/dumb-init /entrypoint run --user=gitlab-runner --working-directory=/home/gitlab-runner