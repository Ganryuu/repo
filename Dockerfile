FROM python:3.10.12

COPY requirements.txt . 

ADD flask_app.py streamlit_app.py /templates/ /root/

RUN pip install -r requirements.txt 

WORKDIR /root

CMD ["python", "flask_app.py"]