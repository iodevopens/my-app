FROM python:3

LABEL app=docker-source

WORKDIR /usr/src/myapp

COPY requirements.txt ./

#RUN /usr/local/bin/python -m pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py

EXPOSE 5000

COPY app/ .

#ENTRYPOINT ["flask run --host 0.0.0.0 --port 5000"]
CMD ["/usr/local/bin/flask", "run", "--host", "0.0.0.0", "--port", "5000"]
