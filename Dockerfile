FROM nginx:alpine

# Copy the static files to nginx html directory
COPY . /usr/share/nginx/html

# Copy drawflow.min.js to root so index.html can find it
RUN cp /usr/share/nginx/html/dist/drawflow.min.js /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Nginx will automatically start