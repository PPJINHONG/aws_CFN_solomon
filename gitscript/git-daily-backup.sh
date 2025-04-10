#!/bin/bash

# 경로 및 브랜치 이름
cd /home/chef/deployment
DATE=$(date +%F)
BRANCH="backup-$DATE"

# 브랜치 생성 후 커밋 & 푸시
git checkout -b $BRANCH
git add .
git commit -m "Daily backup on $DATE"
git push origin $BRANCH

# 다시 master로 돌아오기
git checkout master

