FROM rabbitmq:3-management

RUN rabbitmq-plugins enable --offline rabbitmq_stomp
RUN rabbitmq-plugins enable --offline rabbitmq_web_stomp
RUN rabbitmq-plugins enable --offline rabbitmq_event_exchange

COPY init.sh /usr/local/bin
RUN chmod 777 /usr/local/bin/init.sh

# CMD ["/usr/local/bin/init.sh"]
