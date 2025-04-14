# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install Python dependencies manually (replace these with the ones you need)
RUN pip install flask requests

# Expose the port that your app will run on
EXPOSE 5000

# Command to run your application (replace with your main app file if different)
CMD ["python", "app.py"]

