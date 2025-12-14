# Stage 1: Use a minimal Nginx image as the base
FROM nginx:alpine

# Remove the default Nginx index.html page
RUN rm /etc/nginx/conf.d/default.conf

# Copy a custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your existing website files into the Nginx web root directory
COPY index.html /usr/share/nginx/html/index.html

# Expose the standard HTTP port
EXPOSE 80

# Nginx starts automatically by default, so we don't need a CMD instruction
