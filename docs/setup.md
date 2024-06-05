# Setup Instructions for Raspberry Internet Monitor

This guide will walk you through setting up your Raspberry Internet Monitor, which uses Prometheus, Grafana, and Blackbox Exporter to monitor internet connectivity and speed.

## Prerequisites

- A Raspberry Pi running Raspberry Pi OS or a similar Linux distribution.
- Sufficient privileges to install software and manage services on the device.
- An active internet connection.

## Installation Steps

### 1. Clone the Repository

First, clone the repository to your Raspberry Pi:

```bash
git clone https://github.com/your-username/raspberry-internet-monitor.git
cd raspberry-internet-monitor
```

### 2. Install Dependencies

Run the installation script which will install all required dependencies including Prometheus, Grafana, and Blackbox Exporter:

```bash
./scripts/install_dependencies.sh
```

### 3. Start the Services

Once the dependencies are installed, start the services with:

```bash
./scripts/start_services.sh
```
This script will ensure that Prometheus, Grafana, and the Blackbox Exporter are running.

### 4. Configure Cron Job for Speed Tests

Set up the cron job to run speed tests regularly:

```bash
./scripts/speedtest_cron.sh
```

This will schedule speedtest-cli to run every hour and log the results.

### Verify Installation

After completing the above steps, ensure that all services are running correctly:

```bash
sudo systemctl status prometheus
sudo systemctl status grafana-server
```

Both services should be active and running without any errors.


