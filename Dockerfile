# Use the official Python image from the Docker Hub
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Set environment variables
ENV FLASK_APP=app.py

# Expose the port that Flask runs on
EXPOSE 5000

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]
