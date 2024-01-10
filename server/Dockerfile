FROM python:3.8.18

# initialize working directory
WORKDIR /app

#ENV variable
ENV DEBUG="True"
ENV CELERY_BROKER_URL="redis://redis-server-container:6379/0"
ENV CELERY_RESULT_BACKEND="redis://redis-server-container:6379/0"
ENV DJANGO_DB="postgresql"
ENV POSTGRES_HOST="database-server-container"
ENV POSTGRES_NAME="db"
ENV POSTGRES_USER="postgres"
ENV POSTGRES_PASSWORD="admin"
ENV POSTGRES_PORT="5432"

# copy files from local 
COPY requirements.txt .
COPY backend /app/backend
COPY manage.py /app
copy assignments /app/assignments
COPY server-entrypoint.sh .

RUN pip install --upgrade pip 
RUN pip install --no-cache-dir -r requirements.txt 

RUN pip3 install gunicorn

# Expose port 8000
EXPOSE 8000

RUN chmod +x /app/server-entrypoint.sh



CMD ["./server-entrypoint.sh"]

