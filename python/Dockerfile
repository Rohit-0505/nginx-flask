# Dockerfile - this is a comment. Delete me if you want.
FROM python:2.7
ENV https_proxy=http://one.proxy.att.com:8888
ENV http_proxy=http://one.proxy.att.com:8888
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["/bin/bash", "entrypoint.sh"]
