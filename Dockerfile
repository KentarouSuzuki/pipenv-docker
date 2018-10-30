FROM python:3.7

# パッケージの更新
RUN apt-get update -y && \
		apt-get upgrade -y

# 設定ファイルの設定
COPY ./files/conf /conf

# pythonのソースの設定
WORKDIR /src
ENV PYTHONPATH /src
COPY ./src /src
RUN pip install --upgrade pip && \
		pip install pipenv && \
		pipenv install --system
