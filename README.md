dotfiles minimal
================

Deploys my minimal personalized dotfiles suitable for CLI usage.

Setup the environment
---------------------

1. Create a github token at https://github.com/settings/tokens/new. (No extra scopes needed)

2. Login to ansible-galaxy

   ```bash
   ansible-galaxy login --github-token '<TOKEN>'   
   ```

3. Install the ansible environment
    
   ```bash
   virtualenv -p python2 venv; source venv/bin/activate
   pip install -r requirements.txt
   ansible-galaxy install -r requirements.yml --roles-path=tests/roles
   ```

Import the role from GitHub to Ansible Galaxy
---------------------------------------------

3. Import the role
   ```bash
   ansible-galaxy import --role-name=dotfiles-minimal carlba ansible-role-dotfiles-minimal
   ```

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: carlba.dotfiles_minimal, x: 42 }

License
-------

MIT

