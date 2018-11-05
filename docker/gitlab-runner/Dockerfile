FROM gitlab/gitlab-runner:latest

ENV URL=http://gitlab:8929

COPY entry.sh .

RUN chmod +x entry.sh

ENTRYPOINT ./entry.sh