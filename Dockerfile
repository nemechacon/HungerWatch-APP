FROM python:3.10.6-buster
COPY hitw /hitw
COPY requirements.txt /requirements.txt
COPY xgbmodel.pkl /xgbmodel.pkl
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD uvicorn hitw.api.api:app --host 0.0.0.0 --port $PORT
# CMD uvicorn hitw.api.api:app --host 0.0.0.0 --port 5000
