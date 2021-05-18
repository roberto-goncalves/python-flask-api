FROM python:3.9

RUN apk add --no-cache --update python3-dev gcc build-base
RUN pip install flake8 pylint Flask \
    && rm -rf /root/.cache

COPY ./ /root/python-container
WORKDIR /root/python-container

ENTRYPOINT ["/root/python-container/entrypoint.sh"]
CMD []
