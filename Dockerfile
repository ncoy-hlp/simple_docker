# Dockerfile, Image, Container
FROM python:3.8

ADD main.py .
ADD Pipfile .
ADD Pipfile.lock .

RUN pip install pipenv
RUN pipenv install

CMD ["pipenv", "run", "python", "./main.py"]
