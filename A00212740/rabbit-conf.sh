	

systemctl start rabbitmq-server.service
systemctl enable rabbitmq-server.service
rabbitmq-plugins enable rabbitmq_management
chown -R rabbitmq:rabbitmq /var/lib/rabbitmq/
rabbitmqctl add_user mqadmin mqadminpassword
rabbitmqctl set_user_tags mqadmin administrator
rabbitmqctl set_permissions -p / mqadmin ".*" ".*" ".*"
rabbitmqctl add_vhost /sensu
rabbitmqctl add_user sensu password
rabbitmqctl set_permissions -p /sensu sensu ".*" ".*" ".*"
