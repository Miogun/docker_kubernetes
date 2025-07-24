#!/bin/bash
set -e

# 사용자 설정 (🔁 SSH 주소로 변경)
GIT_REPO_URL="git@github.com:Miogun/docker_kubernetes.git"
COMMIT_MSG="초기 커밋: Flask + Nginx + Docker Compose 예제"

# 1. Git 초기화 (이미 되어있어도 무방)
git init

# 2. 파일 추가 및 커밋
git add .
git commit -m "$COMMIT_MSG"

# 3. 원격 저장소 연결 (기존 origin 제거 후 SSH로 연결)
git remote remove origin 2>/dev/null || true
git remote add origin "$GIT_REPO_URL"

# 4. 브랜치 명 통일
git branch -M main

# 5. 푸시 (SSH로 인증됨)
git push -u origin main

echo "[✔] GitHub SSH 푸시 완료"

# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#!/bin/bash
#set -e

# 사용자 설정
#GIT_REPO_URL="https://github.com/Miogun/docker_kubernetes.git"
#COMMIT_MSG="초기 커밋: Flask + Nginx + Docker Compose 예제"

# 1. Git 초기화 (이미 되어있어도 무방)
#git init

# 2. 파일 추가 및 커밋
#git add .
#git commit -m "$COMMIT_MSG"

# 3. 원격 저장소 연결
#git remote remove origin 2>/dev/null || true
#git remote add origin "$GIT_REPO_URL"

# 4. 브랜치 명 통일
#git branch -M main

# 5. 푸시
#git push -u origin main

#echo "[✔] GitHub 푸시 완료"

