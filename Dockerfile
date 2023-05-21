FROM python:latest

WORKDIR /home/dummy_app
COPY requirements.txt .
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
COPY app.py .
EXPOSE 5000
CMD ["python3", "app.py"]