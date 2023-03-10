FROM python:3.12.0a5-slim-buster

RUN apt-get update && apt-get install -y graphviz fonts-ipafont-gothic && rm -rf /var/lib/apt/lists/*
RUN pip install diagrams==0.7.3

WORKDIR /work

ENTRYPOINT ["/usr/local/bin/python"]
