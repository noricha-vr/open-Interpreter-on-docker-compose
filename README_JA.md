# Open Interpreter on docker compose

このプロジェクトはローカル環境で実行すると危険なOpen InterpreterをDocker Composeを使用して安全に実行するプロジェクトです。

## セットアップ

1. **環境設定ファイルの作成**: `.env-example`を参考にして、`.env`ファイルを作成します。

2. **ビルドとコンテナの起動**: 次のコマンドを使用してDockerイメージをビルドし、コンテナを起動します。その後、コンテナに入ります。

    ```bash
    docker compose build
    docker compose up
    docker exec -it open-interpreter bash
    ```

3. **Pythonインタープリタの起動**: コンテナ内でPythonインタープリタを起動し、以下のコマンドを実行します。

    ```python
    import os
    import interpreter

    interpreter.api_key = os.environ['OPENAI_API_KEY']
    interpreter.auto_run = True
    interpreter.chat("Please print hello world.")
    ```

4. **会話の継続**: 会話を続けるには、以下のコマンドを実行します。

    ```python
    interpreter.chat("Do something.")
    ```

安全なOpen Interpreterライフを！