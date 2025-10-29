# SRE Monitoring Stack – HAProxy + Prometheus + Grafana

[![GitHub Repo Size](https://img.shields.io/github/repo-size/shawntosh/sre-monitoring-stack)](https://github.com/shawntosh/sre-monitoring-stack)
[![License](https://img.shields.io/github/license/shawntosh/sre-monitoring-stack)](LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/shawntosh/sre-monitoring-stack)](https://github.com/shawntosh/sre-monitoring-stack/commits/main)

---

A **production-style monitoring stack** for practicing **DevOps and SRE workflows**.  
Fully integrated **HAProxy, Prometheus, Grafana**, and **HAProxy Exporter**.

---

## 🚀 Stack Components

| Component        | Purpose                                | URL                       |
|-----------------|----------------------------------------|---------------------------|
| HAProxy          | Load balancer + traffic manager         | http://localhost:8404     |
| HAProxy Exporter | Exposes HAProxy metrics for Prometheus | http://localhost:9101/metrics |
| Prometheus       | Scrapes and stores metrics             | http://localhost:9090     |
| Grafana          | Visualizes metrics and dashboards      | http://localhost:3000     |

---

## ⚙️ Folder Structure


sre-stack/
├── README.md
├── scripts/
│ ├── start_monitoring.sh
│ └── check_status.sh
├── haproxy/
├── haproxy_exporter/
├── prometheus/
├── HAproxy.png
├── Grafana.png
├── haproxy_dashboard.json
└── info.sh


---

## 📌 Quick Start

```bash
# Start all services
cd scripts
./start_monitoring.sh

# Check services status
./check_status.sh

