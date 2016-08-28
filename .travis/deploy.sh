#!/usr/bin/env bash
eval "$(ssh-agent -s)"
chmod 600 .travis/deploy-key.pem
ssh-add .travis/deploy-key.pem
git remote add deploy ssh://helloworld@mijn-sv-helloworld.nl:/home/helloworld/mijn-sv-helloworld.git
git push deploy +feature/deployment:refs/heads/master
exit
