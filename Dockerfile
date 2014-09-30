# Dockerfile for Flaskr, a minimal Python blog application powered by Flask
# Flaskr source code: https://github.com/mitsuhiko/flask/tree/0.10.1/examples/flaskr

# Use the Python 2.7 ONBUILD image as our base image
FROM python:2.7-onbuild
# FROM python:3.4-onbuild

# Optionally set the maintainer
MAINTAINER Andrew T. Baker <andrew.tork.baker@gmail.com>

# Based on instructions for the base image: https://registry.hub.docker.com/u/library/python/

# Expose port 80 for Gunicorn to serve the app
EXPOSE 80

# Set the default command for this image 
CMD ["gunicorn", "-c", "gunicorn_config.py", "flask-example:app"]
