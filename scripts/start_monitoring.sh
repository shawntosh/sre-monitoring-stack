#!/usr/bin/env bash

# ---- Start HAProxy ----
echo "Starting HAProxy..."
sudo systemctl restart haproxy
sudo systemctl status haproxy | head -5

# ---- Start HAProxy Exporter ----
echo "Starting HAProxy Exporter..."
cd ~/haproxy_exporter-0.15.0.linux-amd64
nohup ./haproxy_exporter --haproxy.scrape-uri="http://admin:admin@localhost:8404/stats;csv" > haproxy_exporter.log 2>&1 &
echo "HAProxy Exporter running at http://localhost:9101/metrics"

# ---- Start Prometheus ----
echo "Starting Prometheus..."
cd ~/prometheus-2.53.1.linux-amd64
nohup ./prometheus --config.file=prometheus.yml > prometheus.log 2>&1 &
echo "Prometheus running at http://localhost:9090"

echo "All services started! Open Grafana at http://localhost:3000"
