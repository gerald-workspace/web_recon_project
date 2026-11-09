#!/bin/bash
# Web Reconnaissance & Scanner Detector

LOG_FILE="logs/web_access.log"
REPORT_FILE="reports/recon_report.txt"

echo "=== SUSPECT RECONNAISSANCE IPS ===" > $REPORT_FILE
grep -E "404|403" $LOG_FILE | awk '{print $1}' | sort | uniq -c >> $REPORT_FILE
echo "Report generated at: $REPORT_FILE"
