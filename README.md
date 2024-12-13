# sysopctl - System Operations Control Command

## Overview
`sysopctl` is a Bash-based command-line utility designed to simplify system resource management, service control, and system monitoring. It provides an intuitive interface to perform common administrative tasks efficiently.

---

## Features
- List active system services.
- Start/stop system services.
- Display system load averages.
- Show disk usage statistics.
- Monitor system processes in real-time.
- Analyze system logs.
- Backup files and directories.

---

## Requirements
- **Dependencies**:
  - Bash (v4.0 or later)
  - `systemctl` (for managing services)
  - `uptime` (for system load)
  - `df` (for disk usage)
  - `top` (or `htop` for process monitoring)
  - `journalctl` (for log analysis)
  - `rsync` (for backups)

---

## Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/Sumit1arora/sysopctl.git
   cd sysopctl
   ```
2. Run the installation script:
   ```bash
   sudo ./install.sh
   ```
   *The script installs `sysopctl` to `/usr/local/bin` and ensures the correct permissions.*

---

## Usage
### Command Syntax
```bash
sysopctl [OPTION] [COMMAND] [ARGUMENTS]
```

### Available Commands
- **Help and Version**:
  - Display help: `sysopctl --help`
  - Show version: `sysopctl --version`

- **Service Management**:
  - List services: `sysopctl service list`
  - Start a service: `sysopctl service start <service-name>`
  - Stop a service: `sysopctl service stop <service-name>`

- **System Operations**:
  - Show system load: `sysopctl system load`
  - Display disk usage: `sysopctl disk usage`

- **Advanced Features**:
  - Monitor processes: `sysopctl process monitor`
  - Analyze logs: `sysopctl logs analyze`
  - Backup files: `sysopctl backup <path>`

---

## Command Execution Examples
### 1. Help and Version Commands
#### Help Option
```bash
sysopctl --help
```
![Help Option](images/help.png)

#### Version
```bash
sysopctl --version
```
![image](https://github.com/user-attachments/assets/d1fda8d8-6d8c-4765-ad75-2a5130fb8ff4)


### 2. Service Management
#### List Services
```bash
sysopctl service list
```
![List Services](images/service_list.png)

#### Start a Service
```bash
sysopctl service start apache2
```
![Start Service](images/service_start.png)

#### Stop a Service
```bash
sysopctl service stop apache2
```
![Stop Service](images/service_stop.png)

### 3. System Operations
#### Display System Load
```bash
sysopctl system load
```
![System Load](images/system_load.png)

#### Show Disk Usage
```bash
sysopctl disk usage
```
![Disk Usage](images/disk_usage.png)

### 4. Advanced Features
#### Monitor Processes
```bash
sysopctl process monitor
```
![Process Monitor](images/process_monitor.png)

#### Analyze Logs
```bash
sysopctl logs analyze
```
![Log Analysis](images/log_analysis.png)

#### Backup Files
```bash
sysopctl backup /home/user
```
![Backup Files](images/backup.png)

---

## Workflow Diagram
![Workflow Diagram](images/workflow_diagram.png)

## System Architecture Diagram
![System Architecture](images/system_architecture.png)

---

## License
This project is licensed under [Your License Here].

---

## Contributing
Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new feature branch.
3. Commit your changes with clear messages.
4. Submit a pull request.

---

## Author
Sumit Arora - sa7984469@gmail.com

