# Open Interpreter on Docker Compose

This project is designed to run a potentially dangerous Open Interpreter safely using Docker Compose in a local environment.

## Setup

1. **Create Environment File**: Create a `.env` file based on the `.env-example`.

2. **Build and Start Containers**: Use the following commands to build the Docker image and start the containers. Then, enter the container.

    ```bash
    docker compose build
    docker compose up
    docker exec -it open-interpreter bash
    ```

3. **Start Python Interpreter**: Inside the container, start the Python interpreter and execute the following commands.

    ```python
    import os
    import interpreter

    interpreter.api_key = os.environ['OPENAI_API_KEY']
    interpreter.auto_run = True
    interpreter.chat("Please print hello world.")
    ```

4. **Continue the Conversation**: To continue the conversation, execute the following command.

    ```python
    interpreter.chat("Do something.")
    ```

Enjoy a safe Open Interpreter experience!
