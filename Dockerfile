FROM python:3.11-slim

WORKDIR /app

# Install deps first (better caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the code
COPY . .

# Cloud Run listens on $PORT
ENV PORT=8080
EXPOSE 8080

# Start your app (change if your project uses something else)
CMD ["python", "main.py"]
