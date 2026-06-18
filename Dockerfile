FROM mysterysd/wzmlx:heroku
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY . .
RUN pip3 install --upgrade setuptools wheel pip
RUN pip3 install "setuptools_scm<8"
RUN pip3 install --use-pep517 pymediainfo==6.0.1
RUN pip3 install --no-cache-dir -r requirements.txt
CMD ["bash", "start.sh"]
