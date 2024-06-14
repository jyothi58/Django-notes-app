# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app/backend

# Copy the requirements file into the container and install the dependencies
COPY requirements.txt /app/backend
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . /app/backend

#Expose the port on which app runs 
EXPOSE 8000

# command to run application
CMD python /app/backend/manage.py runserver 0.0.0.0:8000
