FROM python:3.11-slim as build

WORKDIR /app

COPY ./analytics/. /app

RUN pip install --upgrade --no-cache-dir pip && \
pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["python", "/app/app.py"]