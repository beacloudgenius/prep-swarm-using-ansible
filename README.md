Prerequisites

ansible

    You already have it your Cloud Genius workstation

jq

    sudo apt install jq -y

Send your public key to Vultr Cloud

    cat ~/.ssh/id_rsa.pub

Get three debian boxes there with private networking enabled
  manager0
  worker0
  worker1

Populate `inventory` with ip addresses of these three boxes

    ansible-playbook playbooks/0.basics.yaml
    ansible-playbook playbooks/1.packages.yaml
    ansible-playbook playbooks/2.private_ip.yaml
    ansible-playbook playbooks/3.hostfile.yaml
    #ansible-playbook playbooks/4.folders.yaml - The set of folders need to be customized to your preference
    ansible-playbook playbooks/5.docker.yaml
    ansible-playbook playbooks/6.swarm.yaml

Reference:

https://docs.docker.com/engine/swarm/swarm-tutorial/
