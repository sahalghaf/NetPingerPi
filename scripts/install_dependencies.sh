#!/bin/bash

echo "Updating system packages..."
sudo apt-get update
sudo apt-get upgrade -y

echo "Installing Prometheus..."
wget https://github.com/prometheus/prometheus/releases/download/v2.26.0/prometheus-2.26.0.linux-arm64.tar.gz
tar xvfz prometheus-*.tar.gz
sudo cp prometheus-2.26.0.linux-arm64/prometheus /usr/local/bin/
sudo cp prometheus-2.26.0.linux-arm64/promtool /usr/local/bin/
sudo mkdir /etc/prometheus
sudo cp -r prometheus-2.26.0.linux-arm64/consoles /etc/prometheus
sudo cp -r prometheus-2.26.0.linux-arm64/console_libraries /etc/prometheus
sudo cp prometheus-2.26.0.linux-arm64/prometheus.yml /etc/prometheus/prometheus.yml

echo "Installing Grafana..."
sudo apt-get install -y apt-transport-https software-properties-common wget
sudo wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt-get update
sudo apt-get install -y grafana

echo "Installing Blackbox Exporter..."
wget https://github.com/prometheus/blackbox_exporter/releases/download/v0.18.0/blackbox_exporter-0.18.0.linux-arm64.tar.gz
tar xvfz blackbox_exporter-*.tar.gz
sudo cp blackbox_exporter-0.18.0.linux-arm64/blackbox_exporter /usr/local/bin/

echo "Installing speedtest-cli..."
sudo apt-get install -y speedtest-cli

echo "All dependencies installed."
