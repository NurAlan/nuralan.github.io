# Gunakan image nginx alpine yang ringan
FROM nginx:alpine

# Copy file index.html dan index.css ke direktori default nginx
COPY index.html /usr/share/nginx/html/index.html
COPY index.css /usr/share/nginx/html/index.css

# Jika nanti ada folder assets (image, js, dll), bisa gunakan:
# COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Jalankan nginx
CMD ["nginx", "-g", "daemon off;"]
