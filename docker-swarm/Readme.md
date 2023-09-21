mkdir /etc/ansible/host_vars
cat /etc/ansible/host_vars/manager1
---
ansible_eth0: 192.168.177.130

[docker-manager-first]
manager1 ansible_host=192.168.177.130

[docker-manager]
manager2 ansible_host=192.168.177.131

[docker-works]
worker1 ansible_host=192.168.177.129
#worker2 ansible_host=192.168.177.131
