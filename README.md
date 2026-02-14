# Server Stats Monitor

A lightweight bash script for monitoring server resource usage and performance metrics.

## Overview

`server-stats.sh` is a simple yet effective command-line tool that provides a quick snapshot of your server's current resource utilization, including CPU usage, memory availability, disk space, and top resource-consuming processes.

## Features

- **CPU Usage**: Displays total CPU utilization percentage
- **Memory Status**: Shows available free memory in MB
- **Disk Space**: Reports disk usage for the root partition
- **Top Processes**: Lists the top 5 processes by CPU and memory consumption

## Requirements

- Linux/Unix-based operating system
- Bash shell
- Standard utilities: `top`, `free`, `df`, `ps`, `awk`

## Installation

1. Clone this repository or download the script:
```bash
git clone <repository-url>
cd <repository-name>
```

2. Make the script executable:
```bash
chmod +x server-stats.sh
```

## Usage

Run the script directly from the command line:

```bash
./server-stats.sh
```

### Sample Output

```
==================================================================
Total CPU Usage: 23.5%
==================================================================
Free Memory: 1024
==================================================================
Free Disk: 45%
==================================================================
Top CPU processes
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
...
==================================================================
Top Memory processes
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
...
```

## Use Cases

- Quick server health checks
- Performance monitoring during development
- Integration into monitoring dashboards
- Troubleshooting resource issues
- Automated system reports (via cron jobs)

## Scheduling with Cron

To run the script automatically, add it to your crontab:

```bash
# Run every hour and log output
0 * * * * /path/to/server-stats.sh >> /var/log/server-stats.log 2>&1

# Run every 5 minutes
*/5 * * * * /path/to/server-stats.sh
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

[Choose appropriate license - MIT, GPL, etc.]

## Author

[Your Name/Username]

## Acknowledgments

Built using standard Linux utilities for system monitoring.
