# Use a specific Ubuntu version to ensure consistency
FROM ubuntu:20.04

# Copy the installation script using COPY instead of ADD for better predictability
COPY install.sh /

# Grant execute permissions to the script and run it
RUN chmod +x /install.sh && \
    /install.sh

# Expose port 80 (assuming Apache is running on this port)
EXPOSE 80

# Start Apache directly as the main process
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
