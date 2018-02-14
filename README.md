sudo apt install jq -y

send your public key to Vultr Cloud
Get three debian boxes there
with private networking enabled
  manager0
  worker0
  worker1
Populate inventory with ip addresses

ansible-playbook playbooks/0.basics.yaml
ansible-playbook playbooks/1.packages.yaml
ansible-playbook playbooks/2.private_ip.yaml
ansible-playbook playbooks/3.hostfile.yaml
#ansible-playbook playbooks/4.folders.yaml
ansible-playbook playbooks/5.docker.yaml
ansible-playbook playbooks/6.swarm.yaml




Read

https://docs.docker.com/engine/swarm/swarm-tutorial/
