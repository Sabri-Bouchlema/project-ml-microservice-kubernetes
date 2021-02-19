FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/

RUN pip install --upgrade pip --no-cache-dir &&\
    pip install --trusted-host pypi.python.org -r requirements.txt --no-cache-dir

EXPOSE 80

CMD ["python", "app.py"]
