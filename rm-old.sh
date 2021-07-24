#!/bin/bash

REPOSITORY=/home/ec2-user/front-end

echo "> 현재 구동 중인 애플리케이션 pid 확인"

CURRENT_PID=$(pgrep -fa react | grep front-end | awk '{print $1}')

echo "현재 구동 중인 애플리케이션 pid: $CURRENT_PID"

if [ -z "$CURRENT_PID" ]; then
  echo "> 현재 구동 중인 애플리케이션이 존재하지 않습니다."
else
  echo "> kill -15 $CURRENT_PID"
  sudo kill -15 $CURRENT_PID
  sleep 5
fi

echo "> app 폴더 삭제"

sudo rm -rdf $REPOSITORY/app/node_modules
sudo rm -rdf $REPOSITORY/app

echo "> 새로운 app 폴더 생성"

sudo mkdir $REPOSITORY/app