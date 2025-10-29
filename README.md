# SRE Monitoring Stack – HAProxy + Prometheus + Grafana

[![GitHub Repo Size](https://img.shields.io/github/repo-size/shawntosh/sre-monitoring-stack)](https://github.com/shawntosh/sre-monitoring-stack)
[![License](https://img.shields.io/github/license/shawntosh/sre-monitoring-stack)](LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/shawntosh/sre-monitoring-stack)](https://github.com/shawntosh/sre-monitoring-stack/commits/main)
<!-- Monitoring Badges -->
[![HAProxy Status](https://img.shields.io/badge/HAProxy-UP-brightgreen)](http://localhost:8404)
[![Prometheus Status](https://img.shields.io/badge/Prometheus-UP-brightgreen)](http://localhost:9090)
[![Grafana Status](https://img.shields.io/badge/Grafana-UP-brightgreen)](http://localhost:3000)

---

## 🐳 Containerized SRE Monitoring Stack

This stack includes:
- **HAProxy** (Load Balancer)
- **HAProxy Exporter** (Metrics)
- **Prometheus** (Monitoring)
- **Grafana** (Visualization)

### Run Everything
```bash
docker-compose up -d --build

---

## 🚀 Stack Components

| Component        | Purpose                                | URL                       |
|-----------------|----------------------------------------|---------------------------|
| HAProxy          | Load balancer + traffic manager         | http://localhost:8404     |
| HAProxy Exporter | Exposes HAProxy metrics for Prometheus | http://localhost:9101/metrics |
| Prometheus       | Scrapes and stores metrics             | http://localhost:9090     |
| Grafana          | Visualizes metrics and dashboards      | http://localhost:3000     |


## 📌 Quick Start

```bash
# Start all services
cd scripts
./start_monitoring.sh

# Check services status
./check_status.sh
 
This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.
