This is a basic project for running a RabbitMQ server in Docker and utilizing Ruby scripts (Bunny) to send and receive messages.

It is intended for learning purposes.

Installation

1. Clone Repository and navigate to project directory.
2. Start the RabbitMQ service by running the following script: `./local-bin/start`
3. Bundle install the `bunny` gem by running the following script: `./local-bin/setup`
4. Start a "worker" service by running `ruby worker.rb` in a terminal.
5. Test a message send/receive by running `ruby new_task.rb` in another terminal instance. You should see `"Received Hello from the otter side!!"` in the "worker" terminal instance.

Notes: 

- The `Bunny` instances by default run and connect to `localhost:5672`. Since our Rabbitmq server is running at that location, the Ruby scripts do not need to define a specific host or port.
- This project assumes you have Docker, Docker Compose, Ruby, and Bundler installed.
- If you want to see the RabbitMQ services in a browser, login to the service [here](http://localhost:15672) using the following credentials:
  - username: `guest`
  - password: `guest`
 
![image](https://github.com/user-attachments/assets/065a7429-b5fa-4dcd-8b55-8a398bc5ba05)


