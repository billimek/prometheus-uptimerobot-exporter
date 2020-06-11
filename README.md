# uptimerobot CLI Prometheus Exporter

[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/billimek/prometheus-uptimerobot-exporter)](https://hub.docker.com/r/billimek/prometheus-uptimerobot-exporter/tags)

This is a docker container which runs a prometheus exporter to collect uptimerobot data using the [lekpamartin/uptimerobot_exporter](https://github.com/lekpamartin/uptimerobot_exporter) code. The [billimek/prometheus-uptimerobot-exporter](https://hub.docker.com/repository/docker/billimek/prometheus-uptimerobot-exporter) docker image is multi-arch supporting amd64, arm7, and arm64.

## Prometheus configuration

The script_exporter needs to be passed the script name as a parameter (script). It is advised to use a long `scrape_interval` to avoid excessive bandwidth use.

Example config:

```yaml
scrape_configs:
  - job_name: 'uptimerobot'
    params:
      script: [uptimerobot]
    static_configs:
      - targets:
        - 127.0.0.1:9705
    scrape_interval: 5m
    scrape_timeout: 90s
```

## helm chart

TBD

## Grafana Dashboard

TBD

## Inspired by

* https://github.com/lekpamartin/uptimerobot_exporter
