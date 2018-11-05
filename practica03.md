https://github.com/acautico12/practica03.git

# Practica03 Miguel Ángel Vargas Hernández

## Crear una máquina con Apache y otra con Mysql en VAGRANT

En esta práctica vamos a aprender a crear dos máquinas virtuales con Vagrant. En una de ellas instalaremos Apache2 y en otra instalaremos Mysql. Al final tenemos que conseguir que al conectarnos a la máquina de Apache esta se conecte automaticamente a la BD de la máquina con Mysql y nos deje insertar datos en la BD.

### Paso 1: Creación del archivo Vagrantfile con dós maquinas.

Para configurar las dos máquinas automaticamente primero tenemos que crearlas, por tanto en el archivo Vagrantfile debemos de tener dos apartados de máquinas virtuales, una para el Apache y otra para Mysql. Pondremos las máquinas en red interna y con distintas Ip's.

### Paso 2: Creación de dos scripts distintos, uno para Apache y otro para Mysql.

Ya que vamos a crear dos máquinas distintas, tambien necesitamos crear dos scripts de configuración distintos que debemos de añadir al provision en el **Vagrantfile**.

Para ello crearemos dos archivos distintos, en el de Apache debemos de instalar el propio apache2 y copiar los archivos html a la carpeta _/var/www/html_ y darle los permisos.

Mientras que en el script de Msql debemos de instalar Mysql, asignarle 