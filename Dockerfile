FROM docker:dind
RUN apk add --no-cache curl jq python py-pip
RUN pip install awscli
RUN $(aws ecr get-login --no-include-email --region us-east-2)
