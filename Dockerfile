FROM python:3.14.2-trixie

RUN apt-get update && apt-get install -y graphviz fonts-ipafont-gothic && rm -rf /var/lib/apt/lists/*
RUN pip install diagrams==0.24.4

WORKDIR /work

ENTRYPOINT ["/usr/local/bin/python"]
