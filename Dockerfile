FROM python:3.8 

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .  

ENTRYPOINT ["python", "train.py"]

RUN ["python","-u", "test.py"]
