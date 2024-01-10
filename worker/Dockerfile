FROM python:3.8.18

# initialize working directory
WORKDIR /app

# copy local file to python-container
COPY requirements.txt .
COPY manage.py .
#COPY env-work.txt /tmp/env-work.txt
COPY backend /app/backend
copy assignments /app/assignments

ENV DEBUG="True"
ENV CELERY_BROKER_URL="redis://redis-server-container:6379/0"
ENV CELERY_RESULT_BACKEND="redis://redis-server-container:6379/0"
ENV DJANGO_DB="postgresql"
ENV POSTGRES_HOST="database-server-container"
ENV POSTGRES_NAME="db"
ENV POSTGRES_USER="postgres"
ENV POSTGRES_PASSWORD="admin"
ENV POSTGRES_PORT="5432"



COPY requirements.txt .
#COPY manage.py /app/backend
#COPY env-server.txt /app
COPY backend /app/backend
COPY manage.py /app
copy assignments /app/assignments
#COPY env-vars.txt /app


RUN pip install --upgrade pip 
RUN pip install --no-cache-dir -r requirements.txt 

# Install Gunicorn
RUN pip install gunicorn

# Expose port 8000
EXPOSE 8001

RUN chmod +x /app/backend/worker-entrypoint.sh

CMD ["./backend/worker-entrypoint.sh"]


