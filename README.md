# gcp-mongodb-ops-ansible

## Pre-requisites

Python modules:

```sh
pip3 install requests google-auth
```

Ansible collections:

```sh
ansible-galaxy collection install google.cloud
ansible-galaxy collection install community.general
ansible-galaxy collection install ansible.posix
```

Secrets in GCP Secret Manager (names are configurable through vars):

- mongodb_ca_crt
- mongodb_tls_crt
- mongodb_tls_pem
- mongodb_tls_key
- mongodb_tls_key_password
- mongodb_admin_password

## Configuring replicaset

1. Run the playbook

```sh
./playbook.yml -i inventory/dev.gcp.yml
```

2. Run the playbook again with options to disable TLS authentication:

```sh
./playbook.yml -i inventory/dev.gcp.yml -e mongodb_non_idempotent=true -e mongodb_set_no_auth=true --tags mongodb-set-no-auth
```

3. Connect to the primary and initiate the replicaset

4. Connect to the primary and create an admin user in the replicaset

5. Run the playbook again to restore TLS authentication

```sh
./playbook.yml -i inventory/dev.gcp.yml --tags mongodb-config
```

## Authors

**Andre Silva** - [@andreswebs](https://github.com/andreswebs)

## License

This project is licensed under the [Unlicense](UNLICENSE.md).
