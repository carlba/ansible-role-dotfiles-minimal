# dotfiles minimal

Deploys my minimal personalized dotfiles suitable for CLI usage.

This commit is for testing purposes.

## Setup the environment

1. Create a github token at https://github.com/settings/tokens/new. (No extra scopes needed)

2. Login to ansible-galaxy

   ```bash
   ansible-galaxy login --github-token '<TOKEN>'
   ```

3. Install the ansible environment
   ```bash
   virtualenv -p python3 venv; source venv/bin/activate
   pip install -r requirements.txt
   pip install .
   ansible-galaxy install -r requirements.yml --roles-path=tests/roles
   ```

## Running

This role can be tested, like so:

```bash
just update
just test
```

## Import the role from GitHub to Ansible Galaxy

3. Import the role
   ```bash
   ansible-galaxy import --role-name=dotfiles-minimal carlba ansible-role-dotfiles-minimal
   ```

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: carlba.dotfiles_minimal, x: 42 }

## TODO

This is needed to configure locale on Manjaro linux

```bash
sudo localectl set-locale LANG=en_US.UTF-8
```

## License

MIT
