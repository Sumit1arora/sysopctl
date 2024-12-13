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
![Help](https://github.com/user-attachments/assets/8580deba-cb40-4613-a3f7-72541b0d96d8)


#### Version
```bash
sysopctl --version
```
![Version](https://github.com/user-attachments/assets/d1fda8d8-6d8c-4765-ad75-2a5130fb8ff4)


### 2. Service Management
#### List Services
```bash
sysopctl service list
```
![List Services](https://github.com/user-attachments/assets/ce0b792b-6324-4cf7-9db5-c3e2f6f96b0d)


#### Start a Service
```bash
sysopctl service start nginx
```
![Start Service](https://github.com/user-attachments/assets/cd7e7bcd-c6ee-44a9-814b-0448624bf2cd)


#### Stop a Service
```bash
sysopctl service stop nginx
```
![Stop Service](https://github.com/user-attachments/assets/747e152f-a4ec-4ddc-8fca-7f99a30ae32d)


### 3. System Operations
#### Display System Load
```bash
sysopctl system load
```
![System Load](https://github.com/user-attachments/assets/844d9dc0-a130-49c7-8cd8-0e6c399a6fcf)


#### Show Disk Usage
```bash
sysopctl disk usage
```
![Disk Usage](https://github.com/user-attachments/assets/dc695c50-bc74-4111-9384-f5d5a5ad069c)


### 4. Advanced Features
#### Monitor Processes
```bash
sysopctl process monitor
```
![Process Monitor](https://github.com/user-attachments/assets/8bf4096d-ab62-4a05-aa8c-fb611401d4ba)


#### Analyze Logs
```bash
sysopctl logs analyze
```
![Log Analysis](https://github.com/user-attachments/assets/761830e0-381f-498c-ab36-12e19f793eb4)


#### Backup Files
```bash
sudo sysopctl backup /home/kali/user
```
![Backup Files](https://github.com/user-attachments/assets/7e52534c-6a15-4798-8409-f9921b7ef91b)


---

## Workflow Diagram
![graphviz (1)](https://github.com/user-attachments/assets/23e070fa-d0c5-44b0-aa0c-d6054254f80e)


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

