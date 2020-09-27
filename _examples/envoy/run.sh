#!/bin/bash
trap "kill 0" EXIT

python3 -m http.server -d www 2>/dev/null &
docker run -i -p10001:10001 -p10000:10000 -p9901:9901  -v`pwd`:/etc/envoy -it envoyproxy/envoy:v1.14-latest
