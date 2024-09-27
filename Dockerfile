FROM python:3.11-alpine

# Create and set the working directory
WORKDIR /

# Copy only the requirements file first to leverage Docker caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application code
COPY . .

# Expose the port your application will run on
EXPOSE 5000

# Specify the command to run on container start
CMD ["python", "hello.py"]