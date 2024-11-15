# Log_Archive_Tool

This project provides a Bash script designed to archive log files from a specified directory. The script compresses log files, generates a timestamped archive, and moves it to a designated backup directory. It’s an excellent tool for anyone looking to automate log management in a Linux environment.

## Features
- Archives all files in a specified log directory.
- Creates a timestamped archive with a `.tar.gz` format for easy storage.
- Moves the archive to a `log_backups` folder.
- Logs each archiving action with a timestamp in `archive_log.txt` for tracking.

## Requirements
- **Bash** (should be available on most Linux and macOS systems)
- **tar** command (pre-installed on most Linux and macOS systems)

## Usage

### 1. Clone the Repository
First, clone this repository to your local machine:
```bash
git clone https://github.com/your-username/log-archiver-script.git

cd log-archiver-script
```

### 2. Make the Script Executable

Ensure the script is executable:
```bash
chmod +x archive_logs.sh
```

### 3. Run the Script

Run the script, specifying the path to the directory where your log files are stored:
```bash
./archive_logs.sh /path/to/log-directory
```
Replace /path/to/log-directory with the actual directory containing the logs you wish to archive.

### Example

For example, to archive logs from the /var/log directory:
```bash
./archive_logs.sh /var/log
```
This will archive all files in the /var/log directory, create a backup in the log_backups folder, and log the action in archive_log.txt.
