# Use lightweight Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy only necessary files first (helps with caching)
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY app.py ./

# Expose Flask port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
