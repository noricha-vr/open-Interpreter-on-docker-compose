FROM python:3.11

# 作業ディレクトリを設定
WORKDIR /workspace

# 必要なPythonモジュールをインストール
RUN pip install open-interpreter==0.1.15

# 現在のディレクトリの内容をコンテナの作業ディレクトリにコピー
COPY . /workspace
