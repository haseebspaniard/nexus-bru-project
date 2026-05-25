# Nexus Bru Project — Nginx Deployment

## Project Overview
Deployed the Nexus Brew cyberpunk cafe website using Nginx on Ubuntu Linux.

## What I Did
- Installed and configured Nginx
- Changed default port from 80 to 76
- Deployed static website files
- Created automated backup script (runs daily at 11:30 PM)
- Created monitoring script to check Nginx health, port, disk, and memory

## Scripts
- `backup_nginx.sh` — backs up Nginx config with timestamp and compression
- `monitor_nginx.sh` — monitors Nginx status, port 76, disk, and memory

## Live Preview
Website running at: http://192.168.29.135:76
