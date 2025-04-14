# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8000

# Set environment variable to ensure Python output is not buffered
ENV PYTHONUNBUFFERED 1

# Run Django development server on container startup
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

