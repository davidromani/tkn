center <<-EOS
\e[32;1m █████╗ ███╗   ██╗███████╗██╗██████╗ ██╗     ███████╗    ██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗███████╗██╗  ██╗ ██████╗ ██████╗ 
██╔══██╗████╗  ██║██╔════╝██║██╔══██╗██║     ██╔════╝    ██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝██╔════╝██║  ██║██╔═══██╗██╔══██╗
███████║██╔██╗ ██║███████╗██║██████╔╝██║     █████╗      ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ ███████╗███████║██║   ██║██████╔╝
██╔══██║██║╚██╗██║╚════██║██║██╔══██╗██║     ██╔══╝      ██║███╗██║██║   ██║██╔══██╗██╔═██╗ ╚════██║██╔══██║██║   ██║██╔═══╝ 
██║  ██║██║ ╚████║███████║██║██████╔╝███████╗███████╗    ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗███████║██║  ██║╚██████╔╝██║     
╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝╚═════╝ ╚══════╝╚══════╝     ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     \e[0m
EOS

block <<-EOS
┌──────────────┬────────────────┐
│ \e[43m   theory   \e[0m │ \e[42m   practice   \e[0m │
└──────────────┴────────────────┘
EOS

block <<-EOS
┌──────────────┐
│ \e[43m   theory   \e[0m │
└──────────────┘


* inventory
* modules
* playbooks
* roles
EOS

block <<-EOS
┌──────────────────────────┐
│ \e[43m   theory   \e[0m > \e[33;1minventory\e[0m │
└──────────────────────────┘


# simple text file with hosts description

# default locations (sorted by priority)
  * /etc/ansible/hosts
  * ~/.ansible/hosts
  * <CURRENT_LOCATION>/hosts

# default location configurable in /etc/ansible/ansible.cfg

# explicit location on every run




\e[33;1mhttp://docs.ansible.com/ansible/intro_inventory.html\e[0m
EOS

block <<-EOS
┌────────────────────────────────────┐
│ \e[43m   theory   \e[0m > \e[33;1minventory\e[0m > example │
└────────────────────────────────────┘


[flux]
s3     ansible_host=37.187.75.127  ansible_user=root
s5     ansible_host=198.50.145.159 ansible_user=root
s6     ansible_host=37.187.172.4   ansible_user=root

[som]
sw3    ansible_host=164.132.200.9  ansible_user=somadmin
sf5    ansible_host=5.135.138.55   ansible_user=somadmin

[local]
mother ansible_connection=local  
EOS

block <<-EOS
┌────────────────────────┐
│ \e[43m   theory   \e[0m > \e[33;1mmodules\e[0m │
└────────────────────────┘


# commands: script, shell...

# files: copy, fetch, backup, synchronize...

# databases: mysql, mssql, postgresql, mongo...

# web services: apache, nginx, jenkins, jira...

# monitoring: logstash, nagios, newrelic...

# notification: mail, slack, hipchat, irc, telegram...




\e[33;1mhttp://docs.ansible.com/ansible/modules_by_category.html\e[0m
EOS

block <<-EOS
┌──────────────────────────┐
│ \e[43m   theory   \e[0m > \e[33;1mplaybooks\e[0m │
└──────────────────────────┘


# simple yaml file with a tasks list

# variables

# includes

# conditionals

# loops

# resuable blocks

# templates (as a skeleton files)




\e[33;1mhttp://docs.ansible.com/ansible/playbooks.html\e[0m
EOS

block <<-EOS
┌────────────────────────────────────┐
│ \e[43m   theory   \e[0m > \e[33;1mplaybooks\e[0m > example │
└────────────────────────────────────┘


- name: warm-up cache again
  shell: chdir={{ a_dir }}
    {{ a_command }} cache:warmup {{ options }}
- name: copy local web assets directory to remote
  synchronize:
    mode: push
    recursive: yes
    perms: yes
    times: yes
    src: "{{ playbook_dir }}/../../web/assets"
    dest: "{{ a_path }}/web"
- name: fix web assets directory to apache ownership
  file:
    path: "{{ a_path }}/web/assets"
    recurse: yes
    follow: yes
    owner: www-data
    group: www-data
- name: reload apache service
  service:
    state: reloaded
    name: apache2
EOS

block <<-EOS
┌──────────────────────┐
│ \e[43m   theory   \e[0m > \e[33;1mroles\e[0m │
└──────────────────────┘


# complex folder structure with multiple yaml files inside

# defines a dynamic and reusable partiture (playbook)

# community (galaxy) repository

# easy to browse, install & play 



\e[33;1mhttp://docs.ansible.com/ansible/galaxy.html\e[0m
EOS

block <<-EOS
┌────────────────┐
│ \e[42m   practice   \e[0m │
└────────────────┘


* installation
* configuration
* run a playbook
* browse galaxy
EOS

block <<-EOS
┌───────────────────────────────┐
│ \e[42m   practice   \e[0m > \e[32;1minstallation\e[0m │
└───────────────────────────────┘
EOS

block <<-EOS
┌────────────────────────────────┐
│ \e[42m   practice   \e[0m > \e[32;1mconfiguration\e[0m │
└────────────────────────────────┘
EOS

block <<-EOS
┌─────────────────────────────────┐
│ \e[42m   practice   \e[0m > \e[32;1mrun a playbook\e[0m │
└─────────────────────────────────┘
EOS

block <<-EOS
┌────────────────────────────────┐
│ \e[42m   practice   \e[0m > \e[32;1mbrowse galaxy\e[0m │
└────────────────────────────────┘
EOS

__END__
