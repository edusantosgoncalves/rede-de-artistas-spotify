#Funcional
FROM python:3.9.17
WORKDIR /usr/src/app
COPY ./codigo ./
RUN pip install --upgrade pip setuptools
RUN pip install -r requirementsNovo.txt
CMD ["uvicorn", "server:app", "--host", "0.0.0.0","--port", "8000"]