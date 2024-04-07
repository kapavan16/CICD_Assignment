FROM python:3.8 

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .  

RUN ["python", "train.py"]

CMD ["python","-u", "test.py"]
