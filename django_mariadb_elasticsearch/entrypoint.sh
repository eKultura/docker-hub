#!/bin/bash
# spustění SSH serveru
service ssh start

# Spuštění prvního skriptu - vytvoření uživatelů
echo "Running users.sh..."
./scripts/users.sh

# Spustí collectstatic pro django
cd div_app
python manage.py collectstatic --noinput

# Nastavení čekání, než naběhne mariadb
echo "Čekání 15sec na start mariadb"
sleep 15

# Spustí Django přes `nohup`, aby běželo na pozadí a byly viditelné logy
echo "Spouštím django server"
nohup python manage.py runserver 0.0.0.0:8000 > django.log 2>&1 &

# echo "Spoustim gunicorn"
# exec gunicorn --workers 4 --threads 2 --bind 0.0.0.0:8000 --reload config.wsgi:application 
# Alternativa spousteni pres gunicorn

# Přesměrování logů do výstupu, aby se docker nevypl, pokud vypneme nohup
tail -f django.log
