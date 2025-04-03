# Use an official Python base image (slim for smaller size)
FROM python:3.10-slim

# Set working directory in container
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application code
COPY app.py .

# Expose port 5000 for the Flask app
EXPOSE 5000

# Define default command to run the app
CMD ["python", "app.py"]
