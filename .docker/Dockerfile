FROM stefanoroncelli/bdp1-project
ADD . /script
WORKDIR /script
RUN apt update
RUN apt install -y bwa python
CMD ["python" "bwa.py"]
