FROM python:3.9

WORKDIR /app
#COPY . ./
ADD . ./
# System Prerequistes
RUN apt-get update

# System Depedencies
RUN apt-get install -y --no-install-recommends \
        gettext \
        vim \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Dependency Environment
RUN pip install poetry
# Project initialization:
RUN poetry config virtualenvs.create false \
  && poetry install --no-interaction --no-ansi

CMD ["python", "-u", "main.py"]
