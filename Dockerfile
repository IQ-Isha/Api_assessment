# Dockerfile

# Use the official .NET 6 runtime as the base image
FROM mcr.microsoft.com/dotnet/aspnet:6.0

# Set the working directory to /app
WORKDIR /app

# Copy the contents of the /workspace/publish directory to the /app directory in the container
COPY workspace/WebApplication1/publish-myapp/net6.0/publish/ .

# Expose the port that your application will run on (adjust as needed)
EXPOSE 80

# Define the command to run your application
CMD ["dotnet", "WebApplication1.dll"]
