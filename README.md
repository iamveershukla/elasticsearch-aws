# Provision TLS enabled Elasticsearch cluster using Terraform and Ansible

* Terraform is used to provision EC2 instance, security group in Default VPC *
* Ansible is used to configure Elasticsearch master on EC2 instance using dynamic inventory *

# Terraform

* Assumptions: *

* Scripts use dev Profile and Region 'ap-south-1'. Update provider.tf for other region and profiles.

* Initialize and run terraform: *
    * terraform init .
    * terraform plan -out elasticsearch.plan .
    * terraform apply elasticsearch.plan .

# Ansible

* Prerequisites *

* Ansible requires python boto library for Dynamic inventory.

# Running Ansible Scripts

* Disable Ansible host checking to work with dynamic inventory *
    * export ANSIBLE_HOST_KEY_CHECKING=False

* Execute ansible playbook to create elasticsearch cluster: *
    * ansible-playbook -i inventory/ec2.py playbooks/elasticsearch.yaml --ask-vault-pass
