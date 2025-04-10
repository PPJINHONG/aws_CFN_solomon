#!/bin/bash

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
# 1. 작업 디렉토리 이동
cd /home/chef/deployment || exit 1

# 2. 로컬 브랜치 확인 (항상 master로 시작)
git checkout master

# 3. 최신 변경사항 백업 브랜치 생성
DATE=$(date +%F)
BRANCH="abackup-$DATE"
git checkout -b $BRANCH

# 4. 변경사항 커밋 및 백업 브랜치 푸시
git add .
git commit -m "Daily backup on $DATE" || echo "[INFO] 커밋할 변경사항 없음"
git push origin $BRANCH

# 5. master로 돌아와서 백업 브랜치 병합
git checkout master
git merge --no-ff $BRANCH -m "Merge backup branch $BRANCH into master"

# 6. 최종적으로 GitHub의 master도 최신으로 맞춤
git push origin master

# 7. 완료 로그
echo "[✔] Backup $BRANCH created, merged to master, and pushed at $(date)"

