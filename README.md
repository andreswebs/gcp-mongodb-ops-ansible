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

## Authors

**Andre Silva** - [@andreswebs](https://github.com/andreswebs)

## License

This project is licensed under the [Unlicense](UNLICENSE.md).
