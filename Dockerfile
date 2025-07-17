# Use official Tomcat base image
FROM tomcat:9.0

# Remove default web apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file from your build context to Tomcat
COPY target/myapp.war /usr/local/tomcat/webapps/myapp.war

# Optional: expose port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
