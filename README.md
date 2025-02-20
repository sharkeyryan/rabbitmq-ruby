This is a basic project for running a RabbitMQ server in Docker and utilizing Ruby scripts (Bunny) to send and receive messages.

It is intended for learning purposes.

Note: This project assumes you have Docker, Docker Compose, Ruby, and Bundler installed.

Installation

1. Clone Repository and navigate to project directory.
2. Start the RabbitMQ service by running the following script: `./local-bin/start-hopping`
3. Bundle install the `bunny` gem by running the following script: `./local-bin/setup`
4. Starter a worker service by running: `ruby worker.rb`
5. Test a message send by running `ruby new_task.rb` in another terminal instance. You should see `"Received Hello World!"` in the worker terminal instance.
