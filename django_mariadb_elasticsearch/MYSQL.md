## ADD USER

CREATE USER IF NOT EXISTS '<user>'@'<ip_adress>' IDENTIFIED BY '<password>';

GRANT ALL PRIVILEGES ON database.* TO '<user>'@'<ip_adress>';

FLUSH PRIVILEGES;

## REMOVE USER

DROP USER IF EXISTS '<user>'@'<ip_address>';

FLUSH PRIVILEGES;

## CHANGE PRIVILEGES

REVOKE ALL PRIVILEGES ON database.* FROM '<user>'@'<ip_address>';

GRANT <new_privileges> ON database.* TO '<user>'@'<ip_address>';

FLUSH PRIVILEGES;

## CHANGE PASSWORD

ALTER USER '<user>'@'<ip_address>' IDENTIFIED BY '<new_password>';

FLUSH PRIVILEGES;