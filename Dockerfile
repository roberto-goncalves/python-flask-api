FROM python:3.6.4-alpine

RUN pip install flake8 \
    pip install pylint \
    && rm -rf /root/.cache

COPY ./ /root/python-container
WORKDIR /root/python-container

ENTRYPOINT ["/root/python-container/entrypoint.sh"]
CMD []
