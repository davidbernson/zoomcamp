FROM python:3.11

RUN pip install pandas sqlalchemy psycopg2 pyarrow

WORKDIR /app
COPY ingest-data.py ingest-data.py

ENTRYPOINT [ "python", "ingest-data.py" ]