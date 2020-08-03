FROM rabbitmq:3-management

RUN apt-get update && \
apt-get install -y curl

RUN curl -LO https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez > rabbitmq_delayed_message_exchange-3.8.0.ez
RUN mv rabbitmq_delayed_message_exchange-3.8.0.ez plugins/

RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange