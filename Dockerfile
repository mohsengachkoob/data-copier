FROM python:3.8

# isntall OS mosules
RUN apt update -y && \
    apt install telnet && \
    rm -rf /var/lib/apt/lists/*

# Copy source code
RUN mkdir -p /data-copier/app
COPY app /data-copier/app
COPY requirements.txt /data-copier


# Install application dependencies
RUN pip install --upgrade pip
RUN pip install -r /data-copier/requirements.txt