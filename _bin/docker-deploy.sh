#!/bin/bash

eval $(ssh-agent -s)
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo "$SSH_KNOWN_HOSTS" > ~/.ssh/known_hosts
chmod 644 ~/.ssh/known_hosts
echo "${DWDOCKER_PRIVATE}" | tr -d '\r' | ssh-add - > /dev/null
ssh dwdocker@${DWDOCKER_HOST}
