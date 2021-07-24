#!/bin/bash

REPOSITORY=/home/ec2-user/front-end/app

echo "> Repository로 이동"

cd $REPOSITORY/

echo "> sudo npm install 실행"

sudo npm install

echo "> npm start 애플리케이션 실행"

sudo nohup npm start &
