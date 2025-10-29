#!/bin/bash
# check_status.sh — Show status of HAProxy, Prometheus, Exporter, and Grafana

echo "========================================="
echo " 🔍  Monitoring Services Status Checker"
echo "========================================="

# HAProxy
echo -n "HAProxy: "
if systemctl is-active --quiet haproxy; then
  echo "✅ Running"
else
  echo "❌ Not Running"
fi

# HAProxy Exporter
echo -n "HAProxy Exporter (port 9101): "
if pgrep -f "haproxy_exporter" > /dev/null; then
  echo "✅ Running"
else
  echo "❌ Not Running"
fi

# Prometheus
echo -n "Prometheus (port 9090): "
if pgrep -f "prometheus" > /dev/null; then
  echo "✅ Running"
else
  echo "❌ Not Running"
fi

# Grafana
echo -n "Grafana (port 3000): "
if systemctl is-active --quiet grafana-server; then
  echo "✅ Running"
else
  echo "❌ Not Running"
fi

echo "========================================="
echo "✅ Done — check above statuses."
