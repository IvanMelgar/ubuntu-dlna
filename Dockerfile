#Para importar la imagen ubuntu, utilizamos FROM
FROM ubuntu:22.04
#Actualizamos y instalamos el dlna
RUN apt-get update

RUN apt-get install -y minidlna

#Copiamos el archivo de configuracioon al directorio dentro de ubuntu
COPY minidlna.conf/ /etc/minidlna.conf

#Volumen para el video con VOLUME
VOLUME /var/lib/minidlna

#Exponemos los puertos necesarios

EXPOSE 8200
EXPOSE 1900

#Ejecutamos el archivo
CMD ["minidlnad","-d","-f","/etc/minidlna.conf"]
