FROM python:3
WORKDIR /var/tmp
COPY hello.py .
RUN pip install flask flask_restful
EXPOSE 3333
RUN FLASK_APP=hello.py
ENTRYPOINT [ "python" ]
CMD [ "hello.py" ]
