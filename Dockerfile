# Use a stable and supported Python version
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port used by Chainlit
EXPOSE 7860

# Run Chainlit app
CMD ["chainlit", "run", "main.py", "--host=0.0.0.0", "--port=7860"]
