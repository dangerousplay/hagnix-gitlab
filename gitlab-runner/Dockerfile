FROM gitlab/gitlab-runner:latest

ENV TOKEN=ustrgnsBnZrJHQAVnm8w
ENV URL=http://gitlab

ENTRYPOINT /usr/bin/dumb-init /entrypoint register \
--non-interactive \
--executor "docker" \
--docker-image alpine:3 \
--url "$URL" \
--registration-token "$TOKEN" \
--description "docker-runner" \
--tag-list "docker" \
--run-untagged \
--locked="false"