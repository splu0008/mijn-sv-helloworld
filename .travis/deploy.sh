#!/usr/bin/env bash
eval "$(ssh-agent -s)"
chmod 600 .travis/deploy-key.pem
ssh-add .travis/deploy-key.pem
git fetch --unshallow
git remote add deploy ssh://helloworld@mijn.svhelloworld.nl:/home/helloworld/mijn-sv-helloworld.git
git push deploy +feature/deployment:refs/heads/master
exit
