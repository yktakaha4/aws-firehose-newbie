FROM python:3-slim

RUN mkdir /app
WORKDIR /app

COPY count_up.py /app
ENTRYPOINT python -u count_up.py
