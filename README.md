# Automated-Backup-Scheduler
The provided shell script automates the process of creating scheduled backups for critical data or systems. It is designed to run at specified intervals using a cron job, ensuring that important data is consistently backed up and older backups are managed efficiently.

## How It Works:
1. Define Variables:
The script sets up several variables including the source directory to be backed up, the backup directory where the backup files will be stored, the log file location, and the format for the timestamp used in naming the backup files.

2. Create Backup:
Using the tar command, the script compresses the specified source directory into a .tar.gz file stored in the backup directory. It appends the current timestamp to the backup file name for easy identification.
Log Backup Status: The script logs the start time of the backup process. If the backup is successful, it logs a success message along with the backup file name. If it fails, it logs an error message.

3. Cleanup Old Backups:
The script uses the find command to identify and delete backup files in the backup directory that are older than 7 days, ensuring that storage space is efficiently managed.
#
This shell script is an effective solution for automating the backup process, ensuring data integrity, and simplifying the management of backup files. It is customizable to fit various backup needs and schedules by modifying the variables and cron job settings. 
