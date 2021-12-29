FROM vckyouuu/geezprojects:buster

# Install repo link
RUN git clone -b Bear-userbot https://github.com/polarrbear/Bear-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/polarrbear/Bear-Userbot/main/requirements.txt

EXPOSE 80 443

CMD ["python3","-m","userbot"]
