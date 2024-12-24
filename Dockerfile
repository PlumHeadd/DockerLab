# Use an alpine-based Python image
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and app code
COPY requirements.txt ./
COPY app.py ./

# Install Flask dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 4000
EXPOSE 4000

# Command to run the app
CMD ["python", "app.py"]
