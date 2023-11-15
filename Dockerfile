FROM python:3.11

# 作業ディレクトリを設定
WORKDIR /workspace

# 必要なPythonモジュールをインストール
COPY requirements.txt /workspace
RUN pip install -r requirements.txt

# 現在のディレクトリの内容をコンテナの作業ディレクトリにコピー
COPY . /workspace
