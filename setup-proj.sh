#!/bin/bash
mkdir ts-code-share && cd ts-code-share
git init && git branch -M main
npx gitignore node
mkdir -p project-a/src project-b/src
cd project-a && npm init -y && npm install -D typescript @types/node tsx && npx tsc --init
cd ../project-b && npm init -y && npm install -D typescript @types/node tsx && npx tsc --init
cd .. && git add . && git commit -m "feat: initial setup"
echo "Setup complete! Now modify the config files and source code."