
FROM python:latest
WORKDIR /app 
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
COPY requirements.txt 
COPY data_ingestion_script.py
RUN data-ingestion_script.py
RUN pip install -r requirements.txt
EXPOSE 5000 
CMD ["python", "run"] 
 
