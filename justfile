python_venv_bin := "venv/bin"

_header name:
  @echo '{{ name }}'

install:
  #!/usr/bin/env bash
  echo "Removing old venv if it exists"
  rm -rf venv
  echo "Create new venv"
  python3 -m venv venv
  echo "Source venv"
  source venv/bin/activate
  echo "Ensure python requirements from requirements.txt is installed"
  pip install -r requirements.txt
  echo "Ensure Ansible Galaxy requirements from requirements.yml"
  ansible-galaxy install -r requirements.yml

update:
  #!/usr/bin/env bash
  echo "Source venv"
  source venv/bin/activate
  echo "Ensure python requirements from requirements.txt is installed"
  pip install -r requirements.txt
  echo "Ensure Ansible Galaxy requirements from requirements.yml"
  rm -rf tests/roles/carlba* && ansible-galaxy install --force --roles-path=tests/roles -r requirements.yml
  ansible-galaxy install -r requirements.yml

format:
  @echo "Formatting all files using prettier"
  @prettier --write .

test-role:
  /bin/bash
  cd tests && ansible-playbook --connection local -i localhost, test.yml