#!/bin/sh

(sleep 20 ; \
rabbitmq-plugins enable rabbitmq_web_stomp \
rabbitmq-plugins enable rabbitmq_event_exchange \
rabbitmq-plugins enable rabbitmq_management ;) &

rabbitmq-server $@
