FROM confluentinc/cp-kafka:7.0.1
RUN mkdir -p /opt/kafka/config
CMD connect-mirror-maker /opt/kafka/config/mm2.properties
