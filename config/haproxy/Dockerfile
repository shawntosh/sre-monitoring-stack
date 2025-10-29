FROM haproxy:latest
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
EXPOSE 80 8404
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
