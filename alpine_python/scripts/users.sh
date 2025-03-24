#!/bin/bash

echo "cd /usmevnaskola" > /etc/profile # Nastaví domovský adresář po připojení na server

# Přidání uživatelů a veřejných SSH klíčů z proměnných prostředí, upravit heslo !!!
useradd -m -s /bin/bash -G sudo ionno
echo "ionno:lIilililililiIillilililiLIil" | chpasswd 
mkdir -p /home/ionno/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCytx/ejihQmnj0MfMDLph1dTax7EIVKsZ7WgsbM3h7oaMKLJhNqmuJiqrwASosL3q9G4xYEMcgs0WXfci9a1vVj/nq0R4MAswpzs17ba6twAC54JduC+KshiBT6G171MDfyMSnOv6Tj1A3pqXZpXr3/CNJc0tYwOSskUUNaopVkDL+axZN3jLsLj3StDZawpWwldT/tLTpIM0L7DB44ssa+6qs2BeB+tB2LUm9BwG76eutLajg172234dcl995O/5cqlzOajOQ3MZVbSRQ/oBqHxttakWKpcSVbtegflKME2KlMEYymWNYpsjXjFBowsDTEuFBaElKfuWS1c5YDM4g+bBFnWl2PSH1Rqgt/G/b08Cb1enTolhcUqcPo2iMP49KFSoFBnCaxOgYvfmiPyOSQpoTBjr1jLbEq8AUOItM4h/gxopQ4PqQ6qxUDuwPudEg3QfUFnYMJINP2Ba/chBU6YYRiojTDzpH5r49w1z2Er3Xt6Jryc9waC8up+JfCw8DikTxV1ZdNIfBQZMo4TS969bHt2V4uUow/OOS36y2o4Vg2/3BIYbDXibePHieUxNLvavSG9AyC2bq8+lzlHvmHQxhZPGEWl8iVezZta4wR6tl+qQ99Jojv9Kelg2L8Inrq7WEFLWVdpoqZs96UtD5+ft4UT4JEe3jbgvTubXIkQ== illnezz@centrum.cz" > /home/ionno/.ssh/authorized_keys
chmod 700 /home/ionno/.ssh
chmod 600 /home/ionno/.ssh/authorized_keys
chown -R ionno:ionno /home/ionno
echo 'ionno ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers