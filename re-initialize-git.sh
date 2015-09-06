#!/bin/bash

mv .git .git.old
git init
git checkout --orphan gh-pages
git add *.csv *.json *.html *.png *.txt *.css *.sh CNAME favicon.ico .gitignore
mv .git.old/config .git/config
git commit -a -m 'restarted'
git push -f origin gh-pages
rm -rf .git.old/
