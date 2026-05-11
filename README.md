# Linux Automation Lab

## Project Goal

The goal of this lab is to develop practical Linux administration, automation, networking, and troubleshooting skills through hands-on projects using Ubuntu Server and Bash scripting.

This project demonstrates foundational Linux administration and automation skills using Ubuntu Server

## Skills Demonstrated

- Bash scripting
- Cron job scheduling
- Linux permissions and ownership
- SSH remote administration
- Nginx web server management
- Log analysis
- Service management with systemctl
- Backup automation

## Scripts

### system_monitor.sh

Performs automated Linux system health checks and logs the results for troubleshooting and monitoring purposes.

#### Checks Included
- Hostname verification
- System uptime
- Disk usage
- Memory usage
- Top memory-consuming processes
- Listening network ports
- Nginx service status

#### Why It Matters
System monitoring is critical for Linux administration, cloud operations, and cybersecurity. Monitoring scripts help administrators identify resource issues, detect service failures, analyze running processes, and troubleshoot systems proactively.

#### Technologies Used
- Bash scripting
- Linux process management
- Network socket inspection
- Log generation
- Service validation with systemctl

### backup.sh
Creates timestamped backups of the scripts directory and logs backup activity.

### hello.sh
Basic Bash script demonstrating execution permissions.

### userinfo.sh
Displays current user and system date information.

## Technologies Used

- Ubuntu Server
- Bash
- Cron
- Nginx
- SSH
- Git/GitHub

## Future Improvements

- Log rotation
- Compression
- Docker integration
- AWS deployment
- Monitoring scripts

## Lab Progress

### Completed
- Installed Ubuntu Server in UTM virtual environment
- Configured SSH remote administration
- Installed and managed Nginx web server
- Analyzed system and application logs
- Inspected listening ports and network services
- Created Bash automation scripts
- Automated backups using cron jobs
- Implemented timestamped backup logging
- Managed Linux users, groups, and permissions
- Used Git and GitHub for version control

### Current Focus
- Bash scripting
- Linux administration
- Automation
- Networking
- Troubleshooting

### Upcoming Goals
- Docker containerization
- AWS EC2 deployment
- System monitoring
- Security hardening
- Log rotation
- Infrastructure automation
