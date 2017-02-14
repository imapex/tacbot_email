##
## Dockerfile for TACBot Email interface
##
FROM python:2-alpine
MAINTAINER Steven Luzynski <sluzynsk@cisco.com>
EXPOSE 5001

RUN pip install --no-cache-dir setuptools wheel

ADD . /app
WORKDIR /app
RUN pip install --requirement /app/requirements.txt
CMD ["python", "app.py"]
