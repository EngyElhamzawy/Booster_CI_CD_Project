# Use the official Python slim image as the base image
FROM python:3.9-slim

# Set the working directory inside the container to /app
WORKDIR /app

# Copy everything from the current directory on your local machine to /app in the container
COPY . /app

# Install the required Python packages
RUN pip install flask requests

# Expose the port your app will run on
EXPOSE 5000

# Command to run your application
CMD ["python", "app.py"]

