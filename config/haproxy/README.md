# HAProxy Load Balancer Configuration

This HAProxy configuration enables round-robin load balancing for two backend web servers running on ports **8081** and **8082**.  
It also exposes a monitoring dashboard at port **8404** (`http://localhost:8404/stats`).

### 📄 File: `haproxy.cfg`
```bash
global 
    log /dev/log    local0
    log /dev/log    local1 notice
    daemon
    maxconn 2000

defaults
    log     global
    mode    http
    option  httplog
    option  dontlognull
    timeout connect 5000
    timeout client  50000
    timeout server  50000

frontend http_front
    bind *:80
    default_backend http_back

backend http_back
    balance roundrobin
    option httpchk GET /
    http-check expect status 200
    default-server inter 5s fall 3 rise 2
    server web1 127.0.0.1:8081 check
    server web2 127.0.0.1:8082 check

listen stats
    bind *:8404
    stats enable
    stats uri /stats
    stats refresh 5s
    stats auth admin:admin

#usages

sudo systemctl restart haproxy
sudo systemctl status haproxy
