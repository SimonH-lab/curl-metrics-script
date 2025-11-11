# cURL Metrics Script

Tiny wrapper around `curl -w` to show connect, starttransfer (TTFB), total, and download speed.

## Usage
```bash
chmod +x curl-metrics.sh
./curl-metrics.sh https://speed.hetzner.de/10MB.bin
# with proxy
HTTP_PROXY=http://user:pass@host:8000 ./curl-metrics.sh https://speed.hetzner.de/10MB.bin
```