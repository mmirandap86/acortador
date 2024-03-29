FROM tiangolo/uvicorn-gunicorn:python3.11
WORKDIR /acortador
COPY ./requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY shortener_app/ /acortador/shortener_app
CMD ["uvicorn", "shortener_app.main:app","--proxy-headers", "--host", "0.0.0.0","--port","3501"]
