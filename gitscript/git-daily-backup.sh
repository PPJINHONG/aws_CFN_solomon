#!/bin/bash

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# 1. 작업 디렉토리 이동
cd /home/chef/deployment || exit 1

# 2. 항상 master에서 시작
/usr/bin/git checkout master

# 3. 새 백업 브랜치 생성
DATE=$(date +%F)
BRANCH="backup-$DATE"
/usr/bin/git checkout -b $BRANCH

# 4. 커밋 및 백업 브랜치 푸시
/usr/bin/git add .
/usr/bin/git commit -m "Daily backup on $DATE" || echo "[INFO] 커밋할 변경사항 없음"
/usr/bin/git push origin $BRANCH

# 5. master로 돌아와서 병합 시도
/usr/bin/git checkout master

# 6. 병합 (충돌 방지 옵션 포함)
/usr/bin/git merge --no-edit --no-ff $BRANCH

# 7. master 브랜치 GitHub 푸시
/usr/bin/git push origin master

# 8. 다시 master 상태 유지
/usr/bin/git checkout master

# 9. 완료 로그
echo "[✔] Backup $BRANCH merged into master and pushed at $(date)"

