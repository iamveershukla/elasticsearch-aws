This project uses terraform to provision AWS resources needed for creating Elasticsearch cluster.
Ansible with dynamic inventory is used to provision Elasticsearch cluster.                                                

Initialize and run terraform:
    terraform init
    terraform plan -out elasticsearch.plan
    terraform apply elasticsearch.plan

Disable Ansible host checking to work with dynamic inventory:
    export ANSIBLE_HOST_KEY_CHECKING=False

Execute ansible playbook to create elasticsearch cluster:
    ansible-playbook ansible/playbooks/elasticsearch_copy.yaml -i ansible/inventory/ec2.py