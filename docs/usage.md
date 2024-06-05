# Usage Guide for Raspberry Internet Monitor

This document explains how to use the Grafana dashboards to monitor your internet connectivity and speed on your Raspberry Pi.

## Accessing Grafana

1. **Open Grafana**: Grafana is typically accessible via a web browser at `http://<raspberry-pi-ip>:3000`.
2. **Login to Grafana**: The default login is `admin` for both username and password. You are advised to change the password upon first login.

## Importing Dashboards

Follow these steps to import the provided dashboards into Grafana:

1. **Navigate to the Dashboard Import Page**: Click on the `+` icon in the left sidebar and select `Import`.
2. **Upload JSON File**: Use the `Upload JSON file` button to upload the dashboard JSON files located in `/dashboards` directory of the cloned repository.
   - `internet_connectivity.json` for monitoring ping and uptime.
   - `internet_speed.json` for visualizing speed test results.

## Understanding the Dashboards

### Internet Connectivity Dashboard

- **Ping Success**: Displays whether the ping to 8.8.8.8 was successful, indicating internet connectivity.
- **Latency**: Shows the response time from 8.8.8.8, allowing you to monitor the quality of your connection.

### Internet Speed Dashboard

- **Download Speed**: Visualizes the download speeds over time, as captured by `speedtest-cli`.
- **Upload Speed**: Shows the upload speeds, helping you diagnose issues with internet speed.

## Setting Alerts

Grafana allows setting up alerts based on certain conditions:

1. **Navigate to the panel edit mode** by clicking on the title of any panel and selecting `Edit`.
2. **Go to the Alert tab** and configure the alert rules as per your requirements.
3. **Save the alert** to be notified in case of any deviations from normal conditions.

Remember, proper configuration of Grafana and understanding of what each metric represents are key to effectively monitoring your internet connection.
