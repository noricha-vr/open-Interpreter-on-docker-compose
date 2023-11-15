# Open Interpreter on Docker Compose

This project is designed to run a potentially dangerous Open Interpreter safely using Docker Compose in a local environment.

[日本語版READMEはこちら]( README_JA.md)

## Setup

1. **Git Clone**: Use the following command to clone this repository.

```bash 
git clone git@github.com:noricha-vr/open-Interpreter-on-docker-compose.git
cd open-Interpreter-on-docker-compose
```

2. **Create Environment File**: Create a `.env` file based on the `.env-example`.

3. **Build and Start Containers**: Use the following commands to build the Docker image and start the containers. Then, enter the container.

 ```bash
 docker compose build
 docker compose up -d
 docker exec -it open-interpreter bash
 ```

4. **Start Python Interpreter**: Inside the container, start the Python interpreter and execute the following commands.

 ```python
 import os
 import interpreter

 interpreter.api_key = os.environ['OPENAI_API_KEY']
 interpreter.auto_run = True
 interpreter.chat("Please print hello world.")
 ```

5. **Continue the Conversation**: To continue the conversation, execute the following command.

 ```python
 interpreter.chat("Do something.")
 ```

Enjoy a safe Open Interpreter experience!
