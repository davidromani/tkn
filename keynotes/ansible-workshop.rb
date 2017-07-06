center <<-EOS
\e[30;1mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMNmhysooossydmMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMds:.             `-/ymMMMMMMMMMMMMMM
MMMMMMMMMMMd+`                      .omMMMMMMMMMMM
MMMMMMMMMy.                            /dMMMMMMMMM
MMMMMMMh-               `.               /NMMMMMMM
MMMMMMo                /MMy               `hMMMMMM
MMMMM/                -NMMMo                yMMMMM
MMMM+                .NMmsMM/                hMMMM
MMMd                `dMN- hMN-               .MMMM
MMM:                yMM/  `mMN`               yMMM
MMM`               oMMy    .NMd`              +MMM
MMM               /MMMMh/   /MMy              /MMM
MMM`             -NMm-oNMNs. oMMo             +MMM
MMM/            `mMN-   :hMMd/hMM/            hMMM
MMMm           `dMM/      .oNMMMMN-          -MMMM
MMMMs          yMMs          /hMMMm`        `mMMMM
MMMMM+        :ddy             .sdh.       `hMMMMM
MMMMMMy`                                  -mMMMMMM
MMMMMMMm:                               `oMMMMMMMM
MMMMMMMMMd:                           `oNMMMMMMMMM
MMMMMMMMMMMNs-                     `/yMMMMMMMMMMMM
MMMMMMMMMMMMMMNho:.            ./sdMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMNmdhyyyhhdNMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\e[0m

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

# explicit location on every play




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

# templates (as a skeleton file)




\e[33;1mhttp://docs.ansible.com/ansible/playbooks.html\e[0m
EOS

block <<-EOS
┌────────────────────────────────────┐
│ \e[43m   theory   \e[0m > \e[33;1mplaybooks\e[0m > example │
└────────────────────────────────────┘


---
- name: Install required server packages for production
  hosts: s6
  tasks:
    - name: check server connection
      ping:
    - name: initial apt-get update && upgrade
      apt:
        update_cache: yes
        upgrade: yes
        autoremove: yes
    - name: install base packages
      apt:
        state: present
        name:
          - acl
          - git
          - nano
          - curl
          - python-software-properties
          - mysql-server-5.7
          - mysql-client-5.7
          - apache2
          - libapache2-mod-fastcgi
          - php7.1-fpm
    - name: add additional java 8 packages repository
      apt_repository:
        state: present
        repo: "ppa:webupd8team/java"
EOS

block <<-EOS
┌────────────────────────────────────┐
│ \e[43m   theory   \e[0m > \e[33;1mplaybooks\e[0m > example │
└────────────────────────────────────┘


---
- name: Create daily MySQL backups
  hosts: s6
  vars:
    - excluded_dbs:
      - "Database"
      - "sys"
      - "information_schema"
      - "performance_schema"
      - "mysql"
  tasks:
    - name: create remote backup directory
      file:
        path:  /var/backups/mysql
        state: directory
        mode:  0755
    - name: register all remote databases name
      shell: 'mysql -u root -p<A_PASSWD> -e "show databases;"'
      register: dblist
    - name: dump all remote databases
      mysql_db:
        state: dump
        name: "{{ item }}"
        login_user: "<A_USER>"
        login_password: "<A_PASSWD>"
        target: "/var/backups/mysql/{{ ansible_date_time.date }}-{{ item }}.sql.bz2"
      with_items: "{{ dblist.stdout_lines | difference(excluded_dbs) }}"
    - name: copy remote databases dump files to local
      fetch:
        src: "/var/backups/mysql/{{ ansible_date_time.date }}-{{ item }}.sql.bz2"
        dest: "/<A_DEST_PATH>"
        flat: yes
      with_items: "{{ dblist.stdout_lines | difference(excluded_dbs) }}" 
    - name: remove remote databases dump files
      file:
        state: absent
        path: "/var/backups/mysql/{{ ansible_date_time.date }}-{{ item }}.sql.bz2"
      with_items: "{{ dblist.stdout_lines | difference(excluded_dbs) }}"
EOS

block <<-EOS
┌────────────────────────────────────┐
│ \e[43m   theory   \e[0m > \e[33;1mplaybooks\e[0m > example │
└────────────────────────────────────┘


---
- name: Create daily web uploads backups
  hosts: s6
  vars:
    - excluded_dirs:
      - "html"
      - "<AN_EXCLUDED_DIR>"
  tasks:
    - name: create remote backup directory
      file:
        path: /var/backups/uploads
        state: directory
        mode: 0755
    - name: register all remote upload directories name
      shell: "ls /var/www/"
      register: dirlist
    - name: backup all remote upload directories
      archive:
        path: "/var/www/{{ item }}"
        dest: "/var/backups/uploads/{{ ansible_date_time.date }}-{{ item }}.tar.bz2"
        format: bz2
      with_items: "{{ dirlist.stdout_lines | difference(excluded_dirs) }}"
    - name: copy remote upload directories to local
      fetch:
        src: "/var/backups/uploads/{{ ansible_date_time.date }}-{{ item }}.tar.bz2"
        dest: "/<A_DEST_PATH>"
        flat: yes
      with_items: "{{ dirlist.stdout_lines | difference(excluded_dirs) }}" 
    - name: remove remote upload directories archive files
      file:
        state: absent
        path: "/var/backups/uploads/{{ ansible_date_time.date }}-{{ item }}.sql.bz2"
      with_items: "{{ dblist.stdout_lines | difference(excluded_dbs) }}"
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

center <<-EOS
┌───────────────────────────────┐
│ \e[42m   practice   \e[0m > \e[32;1minstallation\e[0m │
└───────────────────────────────┘




\e[33;1mhttp://docs.ansible.com/ansible/intro_installation.html\e[0m
EOS

block <<-EOS
┌────────────────────────────────┐
│ \e[42m   practice   \e[0m > \e[32;1mconfiguration\e[0m │
└────────────────────────────────┘


$ ansible localhost -a "/bin/echo hello world"

$ ansible -i hosts all -m ping
EOS

block <<-EOS
┌─────────────────────────────────┐
│ \e[42m   practice   \e[0m > \e[32;1mrun a playbook\e[0m │
└─────────────────────────────────┘


$ ansible-playbook -i <PATH_TO_INVENTORY> app/ansible/deploy.yml




\e[33;1mhttps://github.com/Flexible-User-Experience/Espai-Kowo/tree/master/app/ansible\e[0m
EOS

center <<-EOS
┌────────────────────────────────┐
│ \e[42m   practice   \e[0m > \e[32;1mbrowse galaxy\e[0m │
└────────────────────────────────┘




\e[33;1mhttps://galaxy.ansible.com\e[0m
EOS

center <<-EOS
╔╦╗╦ ╦╔═╗╔╗╔╦╔═  ╦ ╦╔═╗╦ ╦
 ║ ╠═╣╠═╣║║║╠╩╗  ╚╦╝║ ║║ ║
 ╩ ╩ ╩╩ ╩╝╚╝╩ ╩   ╩ ╚═╝╚═╝



┌─┐┬┌┬┐┬ ┬┬ ┬┌┐   ┌─┐┌┐┌┌┬┐  ┌┬┐┬ ┬┬┌┬┐┌┬┐┌─┐┬─┐
│ ┬│ │ ├─┤│ │├┴┐  ├─┤│││ ││   │ ││││ │  │ ├┤ ├┬┘
└─┘┴ ┴ ┴ ┴└─┘└─┘  ┴ ┴┘└┘─┴┘   ┴ └┴┘┴ ┴  ┴ └─┘┴└─
┌─┐  ┌┬┐┌─┐┬  ┬┬┌┬┐┬─┐┌─┐┌┬┐┌─┐┌┐┌┬
│└┘   ││├─┤└┐┌┘│ ││├┬┘│ ││││├─┤││││
└──  ─┴┘┴ ┴ └┘ ┴─┴┘┴└─└─┘┴ ┴┴ ┴┘└┘┴
EOS

__END__
