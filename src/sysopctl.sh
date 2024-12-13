#!/bin/bash

# sysopctl - System Operations Control Command
# Version: 0.1.0

# Global variables
VERSION="0.1.0"
SCRIPT_NAME=$(basename "$0")

# Function to display help information
display_help() {
    echo "Usage: $SCRIPT_NAME [OPTION] [COMMAND] [ARGUMENTS]"
    echo
    echo "System Operations Control Command"
    echo
    echo "Options:"
    echo "  --help     Display this help information"
    echo "  --version  Show command version"
    echo
    echo "Commands:"
    echo "  service list                List all active services"
    echo "  service start <service>     Start a specific service"
    echo "  service stop <service>      Stop a specific service"
    echo "  system load                 Display system load averages"
    echo "  disk usage                  Show disk usage statistics"
    echo "  process monitor             Real-time process activity"
    echo "  logs analyze                Analyze system logs"
    echo "  backup <path>               Backup system files"
    echo
    echo "Examples:"
    echo "  $SCRIPT_NAME service list"
    echo "  $SCRIPT_NAME system load"
}

# Function to display version
display_version() {
    echo "$SCRIPT_NAME version $VERSION"
}

# Function to list running services
list_services() {
    systemctl list-units --type=service
}

# Function to start a service
start_service() {
    if [ -z "$1" ]; then
        echo "Error: Service name required"
        exit 1
    fi
    sudo systemctl start "$1"
    systemctl status "$1"
}

# Function to stop a service
stop_service() {
    if [ -z "$1" ]; then
        echo "Error: Service name required"
        exit 1
    fi
    sudo systemctl stop "$1"
    systemctl status "$1"
}

# Function to display system load
show_system_load() {
    uptime
}

# Function to show disk usage
show_disk_usage() {
    df -h
}

# Function to monitor processes
monitor_processes() {
    top
}

# Function to analyze logs
analyze_logs() {
    journalctl -p err..alert -n 50
}

# Function to backup files
backup_files() {
    if [ -z "$1" ]; then
        echo "Error: Backup path required"
        exit 1
    fi
    
    TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
    BACKUP_DIR="/backup/sysopctl_$TIMESTAMP"
    
    mkdir -p "$BACKUP_DIR"
    rsync -avz "$1" "$BACKUP_DIR"
    
    echo "Backup completed: $BACKUP_DIR"
}

# Main script logic
case "$1" in
    --help)
        display_help
        ;;
    --version)
        display_version
        ;;
    service)
        case "$2" in
            list)
                list_services
                ;;
            start)
                start_service "$3"
                ;;
            stop)
                stop_service "$3"
                ;;
            *)
                echo "Invalid service command"
                display_help
                exit 1
                ;;
        esac
        ;;
    system)
        case "$2" in
            load)
                show_system_load
                ;;
            *)
                echo "Invalid system command"
                display_help
                exit 1
                ;;
        esac
        ;;
    disk)
        case "$2" in
            usage)
                show_disk_usage
                ;;
            *)
                echo "Invalid disk command"
                display_help
                exit 1
                ;;
        esac
        ;;
    process)
        case "$2" in
            monitor)
                monitor_processes
                ;;
            *)
                echo "Invalid process command"
                display_help
                exit 1
                ;;
        esac
        ;;
    logs)
        case "$2" in
            analyze)
                analyze_logs
                ;;
            *)
                echo "Invalid logs command"
                display_help
                exit 1
                ;;
        esac
        ;;
    backup)
        backup_files "$2"
        ;;
    *)
        display_help
        exit 1
        ;;
esac
