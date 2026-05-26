# Terminal Bench – Log Summary Audit

A reproducible Linux terminal benchmarking task built for AI-agent evaluation using Terminal-Bench.

## Overview

This project simulates a real-world log analysis workflow in a Unix-like environment. The task processes server logs, generates structured summaries, and validates outputs using deterministic automated tests.

## Features

- Log severity analysis (INFO/WARNING/ERROR)
- IP frequency aggregation
- Deterministic report generation
- Dockerized execution environment
- Automated pytest validation
- Oracle/NOP benchmark validation

## Technologies

- Bash
- Linux CLI
- Docker
- Pytest
- Terminal-Bench
- Ubuntu

## Validation Results

| Agent | Result |
|---|---|
| Oracle | 100% PASS |
| NOP | 0% FAIL |

## Example Output

```text
INFO: 5
WARNING: 2
ERROR: 3

TOP_IPS:
192.168.1.10 3
192.168.1.20 2
192.168.1.15 2

Analysis Complete
git init
