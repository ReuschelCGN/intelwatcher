# Docker image for IntelWatcher

# python3 intel_watcher.py to scrape the area
# python3 intel_watcher.py -u to update Gyms and Stops with missing title and photo

FROM python:3.8-slim
WORKDIR /usr/src/app
COPY . .
RUN python3 -m pip install --no-cache-dir -r requirements.txt \
&& apt-get update \
&& apt-get install -y chromium=115.0.5790.98-1~deb12u1
