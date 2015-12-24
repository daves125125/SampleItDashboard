FROM centos:centos6

# Enable Extra Packages for Enterprise Linux (EPEL) for CentOS
RUN yum install -y epel-release

# Install Node.js and npm
RUN yum install -y nodejs npm

# Copy only required assets to container
COPY server.js /app/dist
COPY assets /app/dist
WORKDIR /app/dist

EXPOSE  4444
CMD ["node", "/app/dist/server.js"]