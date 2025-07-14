FROM python:3.13-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt && pip install gunicorn
COPY . .
EXPOSE 8082
CMD ["gunicorn", "--bind", "0.0.0.0:8082"]