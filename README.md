Salt States
===========

Install
-------

Bootstrap install [salt](http://docs.saltstack.com/en/latest/).

    wget -O install_salt.sh http://bootstrap.saltstack.org
    sudo sh install_salt.sh
    

Clone states into `/srv/salt`.

    sudo apt-get install git
    sudo git clone https://github.com/edmessier/salt-states.git /srv/salt
    
Run `highstate`.

    sudo salt-call --local state.highstate

Updating
--------

To run new states against a box that is already installed.

Update local git repo:

    cd /srv/salt
    sudo git pull
    
Run highstate:

    sudo salt-call --local state.highstate
