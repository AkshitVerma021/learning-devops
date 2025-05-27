# Start with a lightweight Python image
FROM python:3.10-slim

# Set a working directory inside the container
WORKDIR /app

# Copy the current folder into /app in the container
COPY . /app

# Install the app dependencies
RUN pip install flask

# Tell Docker what command to run when the container starts
CMD ["python3", "app.py"]
