
#Automated Log Rotation & Archiving 

## Purpose  
Prevent logs from consuming too much disk space by compressing old logs and deleting them after 7 days.

##  Steps to Implement

### Step 1: Identify Log Files  
**Target directory:** `/var/log/myapp/`

### Step 2: Compress Logs Older Than 1 Day  
Convert `.log` files into `.gz`.

### Step 3: Move Compressed Logs to an Archive Folder  
Store them in `/var/log/myapp/archive/`.

### Step 4: Delete Logs Older Than 7 Days  
Free up disk space.
