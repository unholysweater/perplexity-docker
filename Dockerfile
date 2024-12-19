# Use an official Python image as the base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Set environment variables
ENV OPENAI_API_KEY=${OPENAI_API_KEY}

# Run the command to start the application when the container launches
CMD ["python", "nanoPerplexityAI.py"]
