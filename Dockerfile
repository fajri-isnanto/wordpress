# Use the official Nginx image as the base image
FROM nginx:alpine

#Copy nginx configuration 
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the HTML file to the default Nginx directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to be able to access the web server
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
