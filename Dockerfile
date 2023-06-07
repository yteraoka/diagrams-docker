FROM python:3.11.4-buster

RUN apt-get update && apt-get install -y graphviz fonts-ipafont-gothic && rm -rf /var/lib/apt/lists/*
RUN pip install diagrams==0.23.3

WORKDIR /work

ENTRYPOINT ["/usr/local/bin/python"]
