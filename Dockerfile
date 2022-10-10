FROM python:3.8

RUN pip install poetry
RUN mkdir /src
WORKDIR /src

COPY poetry.lock pyproject.toml /src/
RUN poetry config virtualenvs.create false \
  && poetry install --only main --no-interaction --no-ansi

COPY dummy /src/dummy

ENV PYTHONPATH=$PWD:$PYTHONPATH

EXPOSE 8000
ENTRYPOINT ["uvicorn", "dummy.main:app", "--host", "0.0.0.0", "--port", "8000"]
