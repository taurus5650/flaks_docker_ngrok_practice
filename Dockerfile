FROM python:3.12

RUN apt-get update && apt-get install -y \
    python3-venv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY . /app
WORKDIR /app

RUN python3 -m venv /opt/venv
RUN /opt/venv/bin/pip install --upgrade pip
RUN /opt/venv/bin/pip install -r requirements.txt

# EXPOSE 5001

CMD ["/opt/venv/bin/python", "run.py"]
