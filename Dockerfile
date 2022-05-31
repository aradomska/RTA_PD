FROM python:3.8.8

WORKDIR /rtapd

COPY requirements.txt .

COPY Model_pickle_rta.pkl .

COPY perceptron_model.py .

COPY app.py .

RUN pip install -r requirements.txt

CMD ["python", "./app.py"]
