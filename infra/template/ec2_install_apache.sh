#! /bin/bash
# shellcheck disable=SC2164

# Navigate to the home directory
cd /home/ubuntu

# Update package lists and install Node.js, npm, and Git
yes | sudo apt update
yes | sudo apt install nodejs npm git

# Clone the NestJS project repository
git clone https://github.com/SiThuKyawTint-GuGu/nestjs-mysql.git

# Wait for the clone to complete
sleep 20

# Navigate to the project directory
cd nestjs-mysql

# Install project dependencies
npm install

# Build the project
npm run build

# Wait for 30 seconds before starting the server
echo 'Waiting for 30 seconds before starting the server'
sleep 30

# Start the NestJS application in the background
setsid npm run start:prod &
