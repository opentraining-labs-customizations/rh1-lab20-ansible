```bash
  curl -H 'Content-Type: application/json' -d '{"event_name": "Apache Service is down", "host_host": "srv-httpd-001.lnx.example.local" }' edacontrol001.lnx.example.local:5000/endpoint