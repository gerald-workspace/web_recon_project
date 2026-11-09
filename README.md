# Web Reconnaissance & Scanner Detector

A lightweight Security Operations Center (SOC) telemetry log parser built in Bash. This tool isolates web server scanner activity, detects unauthorized directory enumeration attempts (HTTP 404/403 status codes), and generates structured threat incident reports.

## Features
- **Reconnaissance Detection**: Identifies automated vulnerability scanners probing for sensitive endpoints (`/.env`, `/config.php`, `/admin`).
- **Telemetry Parsing**: Filters web access logs using regular expression patterns (`grep -E`).
- **Attacker Aggregation**: Extracts offending source IP addresses and calculates attack volume using `awk`, `sort`, and `uniq`.
- **Automated Reporting**: Outputs findings directly into timestamped summary text files.

## Project Structure
```text
web_recon_project/
├── logs/
│   └── web_access.log        # Raw web server access logs
├── reports/
│   └── recon_report.txt      # Generated threat summary reports
├── recon_detector.sh         # Main automated parser script
└── README.md                 # Project documentation
