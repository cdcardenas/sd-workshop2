	

systemctl start rabbitmq-server.service
systemctl enable rabbitmq-server.service
rabbitmq-plugins enable rabbitmq_management
chown -R rabbitmq:rabbitmq /var/lib/rabbitmq/
rabbitmqctl add_user mqadmin mqadminpassword
rabbitmqctl set_user_tags mqadmin administrator
rabbitmqctl set_permissions -p / mqadmin ".*" ".*" ".*"
