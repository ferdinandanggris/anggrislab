# Gunakan image Nginx versi Alpine yang sangat ringan
FROM nginx:alpine

# Hapus config default Nginx
RUN rm /usr/share/nginx/html/index.html

# Salin file web compro kita ke dalam container
COPY index.html /usr/share/nginx/html/index.html

# (Opsional) Salin custom config jika nanti diperlukan
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]