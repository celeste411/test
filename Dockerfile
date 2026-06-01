FROM python:3.12-slim

WORKDIR /app

# install system basics (important for Pi / numpy / pandas etc)
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# copy runner
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
