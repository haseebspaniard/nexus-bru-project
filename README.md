# 🌐 Nexus Bru Project — Nginx Deployment on Linux

![Nginx](https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)

## 📌 Project Overview

This is a real-world DevOps project where I deployed the **Nexus Brew** cyberpunk cafe website on a Linux server using **Nginx** — including port configuration, automated backups, and a monitoring script.

This project was completed as part of my **Cloud & DevOps course** at Akumen by Qubiqon.

---

## ✅ What I Did

| Task | Details |
|------|---------|
| Installed Nginx | On Ubuntu Linux (VirtualBox) |
| Deployed static website | HTML, CSS, JS files served by Nginx |
| Changed default port | From 80 → **76** |
| Automated backup script | Backs up Nginx config daily at 11:30 PM with timestamp + compression |
| Monitoring script | Checks Nginx status, port 76, disk usage, and memory |
| Version controlled | All scripts pushed to this GitHub repo |

---

## 📁 Project Structure

```
nexus-bru-project/
├── website/
│   ├── index.html
│   ├── tooplate-nexus-brew.css
│   ├── tooplate-nexus-scripts.js
│   └── images/
├── backup_nginx.sh
├── monitor_nginx.sh
└── README.md
```

## 🔧 Scripts

### backup_nginx.sh
- Backs up all Nginx config files from `/etc/nginx/`
- Saves backup with timestamp: `nginx-config-backup_YYYY-MM-DD_HH-MM-SS.tar.gz`
- Compressed using `tar -czf`
- Runs automatically every day at **11:30 PM** via cron job

### monitor_nginx.sh
- ✅ Checks if Nginx service is running
- ✅ Checks if port 76 is listening
- ✅ Displays disk usage
- ✅ Displays memory usage

---

## 🚀 How to Run

```bash
# Run backup manually
sudo ./backup_nginx.sh

# Run monitoring
sudo ./monitor_nginx.sh

# Check cron job
sudo crontab -l
```

---

## 💡 Key Learnings

- How Nginx serves static websites
- Changing Nginx default port and testing with `nginx -t`
- Using `ss -tlnp` to verify ports
- Writing automated bash scripts for DevOps tasks
- Scheduling tasks with cron jobs
- Using `tar` for compressed backups with timestamps

---
## 📸 Screenshots

### Website Live on Port 76
<img width="1366" height="683" alt="image" src="https://github.com/user-attachments/assets/6a9a431f-590c-4b8e-93dd-044625a381cd" />

### Monitoring Script Output
<img width="610" height="518" alt="image" src="https://github.com/user-attachments/assets/e99f8d12-ce97-4608-8af8-66c7eebb4c41" />


## 👤 Author

**Abdul Haseeb**
Cloud & DevOps Learner | Former CS Teacher

[Medium](https://medium.com/@haseebabdul480) | [LinkedIn](https://www.linkedin.com/in/abdulhaseebas)
