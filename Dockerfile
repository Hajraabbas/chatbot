FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy project files
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 7860

# Run Chainlit
CMD ["chainlit", "run", "main.py", "--host=0.0.0.0", "--port=7860"]
