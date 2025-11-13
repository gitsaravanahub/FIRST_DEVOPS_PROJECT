# Use official Nginx image as base
FROM nginx:alpine

# Copy your HTML file into Nginx's default public directory
COPY firstdevops.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Run Nginx in foreground (default command)
CMD ["nginx", "-g", "daemon off;"]

