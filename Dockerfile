# Use the official Python base image
FROM python:3.9-slim

# Install system dependencies
RUN apt-get update && apt-get install -y gnupg

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Upgrade pip to the latest version
RUN pip install --upgrade pip

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Define environment variable
ENV NAME World

# Run the application
CMD ["python", "app.py"]

