# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy and install dependencies
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app source code
COPY app/ .

# Expose port (change 5000 to whatever your app uses)
EXPOSE 5000

# Run the app
CMD ["python", "main.py"]