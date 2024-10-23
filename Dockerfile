FROM python:3.12-slim
WORKDIR /app
COPY Pipfile .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir Pipfile
COPY . .
CMD ["python", "main.py"]