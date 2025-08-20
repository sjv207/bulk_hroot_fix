# Use official Python image
FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Copy requirements and app files
COPY app.py /app/app.py
COPY templates /app/templates

# Install Flask
RUN pip install flask

# Expose port 8164
EXPOSE 8164

# Run the app
CMD ["python", "app.py"]
