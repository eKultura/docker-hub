#!/bin/bash

# Spu�t�n� prvn�ho skriptu - vytvo�en� u�ivatel�
echo "Running users.sh..."
./scripts/users.sh

# Spu�t�n� hlavn�ho procesu (Apache nebo PHP-FPM)
exec "$@"