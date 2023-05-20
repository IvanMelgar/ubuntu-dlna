# ubuntu-dlna
Primero de todo el link a nuestra imagen en el dockerhub:
https://hub.docker.com/r/ivanmelgar/ubuntu-dlna
Aqui esta el repositorio de ubuntu-dlna, con los archivos siguientes, se puede ejecutar el contenedor de Docker, basada en una imagen de Ubuntu 22.04, que funcionará como Servidor minidlna. Para poder desplegar el contenedor, tenemos que seguir los siguientes paso antes:
1. Actualizaremos  los repositorios de nuestro sistema:
sudo apt-get update && sudo apt-get -y upgrade
2. Instalamos las dependencias que necesitamos en este caso (Docker, Docker-compose y GitHub):
sudo apt-get install -y git docker docker.io docker-compose
3. Ahora clonamos este repositorio vía HTTPS con el siguiente comando:
sudo git clone https://github.com/TaimourM03/ubuntu-dlna.git
4. Accedemos a la carpeta generada del repositorio:
cd ubuntu-dlna
5. Iniciamoa el contenedor del archivo "docker-compose.yml", para ello:
sudo docker-compose up -d

Siguiendo estos pasos, podremos tener el contenedor ejecutado correctamente. Y asi podremos comprobar si funciona correctamente y como funciona, mediante el cliente DLNA como es VLC.

1. Abrimos el VLC Media Player.
2. Damos sobre "Ver" y después sobre "Lista de Reprodución" en el barra de arriba.
3. Después pulsaramos sobre "Universal Plug’n’Play", que se encuentra en el barra latera izquierda.
4. Se nos mostrará lo siguiente, y veremos nuestro servidor, le damos clic, y buscamos
nuestro video, para ello seguimos la siguiente ruta, en mi caso: dln→Video→All Video →
playa.
5. En esta sección estaran los videos que esten en la carpeta Video, en nuestro caso solo el video de playa.
