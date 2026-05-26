#!/bin/bash
set -euo pipefail

LOG_FILE="server.log"
REPORT_FILE="summary_report.txt"

info_count=$(grep -c " INFO " "$LOG_FILE" || true)
warning_count=$(grep -c " WARNING " "$LOG_FILE" || true)
error_count=$(grep -c " ERROR " "$LOG_FILE" || true)

{
  echo "INFO: $info_count"
  echo "WARNING: $warning_count"
  echo "ERROR: $error_count"
  echo
  echo "TOP_IPS:"
  awk '{print $4}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -3 | awk '{print $2 " " $1}'
  echo
  echo "Analysis Complete"
} > "$REPORT_FILE"
