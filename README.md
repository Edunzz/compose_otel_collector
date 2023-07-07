# Compose collector

# docker create image and upload
export DT_API_TOKEN=dt0c01.MY_SECRET_TOKEN
<br>
export DT_OTLP_ENDPOINT=https://{your-env-id}.live.dynatrace.com/api/v2/otlp
<br>
export OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE=delta
<br>
docker-compose up -d
<br>
docker login
<br>
docker push {image name}

# Author
Jose Romero
