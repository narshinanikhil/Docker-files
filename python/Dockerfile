FROM python:3.12-slim
MAINTAINER NIKHIL
LABEL This task is for python application
EXPOSE 8000
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python","app.py"]
