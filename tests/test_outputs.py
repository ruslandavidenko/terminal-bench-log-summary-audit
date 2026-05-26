from pathlib import Path


def test_summary_report_exists():
    report = Path("/app/summary_report.txt")
    assert report.exists(), "summary_report.txt was not created"


def test_summary_report_content():
    report = Path("/app/summary_report.txt")
    content = report.read_text().strip()

    expected = """INFO: 5
WARNING: 2
ERROR: 3

TOP_IPS:
192.168.1.10 3
192.168.1.20 2
192.168.1.15 2

Analysis Complete"""

    assert content == expected


def test_no_extra_required_files_missing():
    log_file = Path("/app/server.log")
    assert log_file.exists(), "server.log should exist in /app"
