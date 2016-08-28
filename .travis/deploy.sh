#!/usr/bin/env bash
eval "$(ssh-agent -s)"
chmod 600 .travis/deploy-key.pem
ssh-add .travis/deploy-key.pem
git fetch --unshallow
git remote add deploy ssh://helloworld@mijn-sv-helloworld.nl:/home/helloworld/mijn-sv-helloworld.git
git push deploy +master:refs/heads/master
exit
