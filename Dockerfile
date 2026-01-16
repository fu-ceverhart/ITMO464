# Base image: Use Python 3.11 slim version for a smaller, lightweight container.
FROM python:3.11-slim

# Set the working directory inside the container to /app where all commands will run.
WORKDIR /app

# Copy the requirements.txt file from the host to the container's working directory.
COPY requirements.txt .

# Install Python dependencies from requirements.txt without caching to reduce image size.
RUN pip install --no-cache-dir -r requirements.txt

# Copy all remaining files from the host into the container's working directory.
COPY . .

# Define the default command to run when the container starts: execute the Python app.
CMD ["python", "app.py"]
