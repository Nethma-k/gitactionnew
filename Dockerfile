# Use the official lightweight Python image.
FROM python:3.11-slim

# Set environment variables
#ENV PYTHONDONTWRITEBYTECODE=1
#ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

EXPOSE 8080

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app source
COPY . .

# Run the Flask app
CMD ["python", "app.py"]
