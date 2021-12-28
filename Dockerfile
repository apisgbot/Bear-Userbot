FROM polarrbear/bear-userbot:buster

# Install repo link
RUN git clone -b Bear-userbot https://github.com/polarrbear/Bear-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot


CMD ["python3","-m","userbot"]
