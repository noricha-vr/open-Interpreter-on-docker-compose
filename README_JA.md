# Open Interpreter on docker compose

このプロジェクトはローカル環境で実行すると危険なOpen InterpreterをDocker Composeを使用して安全に実行するプロジェクトです。

[English version README is here]( README.md)
## セットアップ
1. **Gitリポジトリのクローン**: 次のコマンドを使用して、このリポジトリをクローンします。

```bash 
git clone git@github.com:noricha-vr/open-Interpreter-on-docker-compose.git
cd open-Interpreter-on-docker-compose
```

2. **環境設定ファイルの作成**: `.env-example`を参考にして、`.env`ファイルを作成します。

3. **ビルドとコンテナの起動**: 次のコマンドを使用してDockerイメージをビルドし、コンテナを起動します。その後、コンテナに入ります。

 ```bash
 docker compose build
 docker compose up -d
 docker exec -it open-interpreter bash
 ```

4. **Pythonインタープリタの起動**: コンテナ内でPythonインタープリタを起動し、以下のコマンドを実行します。

 ```python
 import os
 import interpreter

 interpreter.api_key = os.environ['OPENAI_API_KEY']
 interpreter.auto_run = True
 interpreter.chat("Please print hello world.")
 ```

5. **会話の継続**: 会話を続けるには、以下のコマンドを実行します。

 ```python
 interpreter.chat("Do something.")
 ```

安全なOpen Interpreterライフを！