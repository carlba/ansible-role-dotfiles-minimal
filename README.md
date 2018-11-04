dotfiles
========

Deploys my personalized dotfiles.

Setup the environment
---------------------

1. Create a github token at https://github.com/settings/tokens/new. (No extra scopes needed)

2. Login to ansible-galaxy

   ```bash
   ansible-galaxy login --github-token '<TOKEN>'   
   ```

Import the role from GitHub to Ansible Galaxy
---------------------------------------------

3. Import the role
   ```bash
   ansible-galaxy import --role-name=test-role carlba ansible-role-dotfiles
   ```

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: carlba.dotfiles, x: 42 }

License
-------

MIT

