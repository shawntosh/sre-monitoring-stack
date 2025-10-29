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


Open your browser to access:

HAProxy: http://localhost:8404

HAProxy Exporter: http://localhost:9101/metrics

Prometheus: http://localhost:9090

Grafana: http://localhost:3000

🖼 Project Screenshots
HAProxy Dashboard
<p align="center"> <img src="./HAproxy.png" alt="HAProxy Dashboard" width="80%"> </p>
Grafana Dashboard
<p align="center"> <img src="./Grafana.png" alt="Grafana Dashboard" width="80%"> </p>
🔧 Features

Real-time metrics for frontend & backend traffic

Monitor error rates (4xx/5xx)

Observe latency and response times

Track session counts per backend server

Ready-to-use Grafana dashboards

Clean scripts for starting & checking services
