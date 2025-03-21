# Before use

This Docker image contains a full version of Python. It is mainly used for large Django projects or for testing, with all necessary libraries preinstalled.  
For small or lightweight projects, use the lite version of the Docker image instead.

A database user created via the ```.env``` file during first-time setup is granted access **from any host** by default.  
If you want to limit access (e.g. to localhost only), you need to manually **edit, add, or remove the user** accordingly.
Use ```MYSQL.md``` if needed.

# Setting up a Docker container

1) Copy everything to the target directory  
2) Clone or copy the Django project into the ```/data/``` folder  

---

### Files to edit:

#### 📄 ```Dockerfile```
1) Edit lines under `# Instalace Python balíků` to install the required Python packages for your project  

#### 📄 ```.env```
1) Edit all environment variables as needed  

#### 📄 ```docker-compose.yml```
1) The Elasticsearch container can be removed completely if it's not required  

#### 📄 ```entrypoint.sh```
1) Set the correct application path under `# Spustí collectstatic pro django`  

#### 📄 ```/scripts/users.sh```
1) Add or edit users and groups  
2) Set up a home directory for each user by editing the line:  
   ```echo "cd /div_app" > /etc/profile```

#### 📄 ```/scripts/my.cnf```
1) This configuration enables a larger `innodb_buffer_size` – remove or adjust it if not needed  
