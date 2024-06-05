#!/bin/bash

echo "Starting Prometheus..."
sudo systemctl start prometheus

echo "Starting Grafana..."
sudo systemctl start grafana-server
sudo systemctl enable grafana-server

echo "Starting Blackbox Exporter..."
sudo nohup blackbox_exporter --config.file=/path/to/your/blackbox.yml &

echo "All services started successfully."
