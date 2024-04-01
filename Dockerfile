FROM python:3.11
WORKDIR /client
COPY . /client
RUN pip install --no-cache-dir -r requirements.txt
RUN python db.py -a
CMD ["python3", "app.py", "--host", "0.0.0.0", "--port", "5000"]
