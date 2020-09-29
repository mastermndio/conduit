#!/bin/bash
sudo apt update -y

#Install nginx nodejs and npm
sudo apt install nginx nodejs npm git -y

#Install mongodb
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

sudo apt update -y

sudo apt install mongodb-org -y

sudo npm install -g pm2

git clone https://github.com/mastermndio/conduit.git

cd conduit/frontend && npm install && export PORT=4100 && pm2 start node cross-env react-scripts start

cd ../../conduit/backend && npm install && pm2 start app.js

sudo systemctl start mongod.service


