#!/usr/bin/env sh

# abort the execution of the script in case of any errors
set -e

# to build vue js application then create dist folder
npm run build

# navigate into the build output directory
cd dist

# git init dist folder
git init

# i have to config my parameters manually
git config user.email angelo.cina@yahoo.it
git config user.name AngeloCinaWD

#add everything at the branch
git add -A

#add a message at the commit
git commit -m 'New Deployment'

# push everything in the branch gh-pages
git push -f git@github.com:AngeloCinaWD/weather-app.git master:gh-pages

cd -