# Python 3.10 Alpine image
FROM python:3.10-alpine


# Set working directory
WORKDIR /app

# Copy requirements.txt
COPY containers/python/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY containers/python/. .

# Command to run the Python app
CMD ["python", "app.py"]
