# 🐧 50 EJERCICIOS LINUX 🐧  - Resueltos

> Resolución de los 50 ejercicios de Linux de los días anteriores.
---

## 📁 1. Trabajando con Directorios y Archivos

| # | Descripción | Comando |
|---|-------------|---------|
| 1 | Mostrar el directorio actual | `pwd` |
| 2 | Crear un directorio llamado `practica` | `mkdir practica` |
| 3 | Ingresar al directorio `practica` | `cd practica` |
| 4 | Crear un archivo llamado `ejemplo.txt` | `touch ejemplo.txt` |
| 5 | Listar el contenido del directorio actual | `ls` |
| 6 | Copiar `ejemplo.txt` a `ejemplo_copia.txt` | `cp ejemplo.txt ejemplo_copia.txt` |
| 7 | Renombrar `ejemplo_copia.txt` a `ejemplo_renombrado.txt` | `mv ejemplo_copia.txt ejemplo_renombrado.txt` |
| 8 | Eliminar `ejemplo.txt` | `rm ejemplo.txt` |
| 9 | Crear un subdirectorio llamado `subpractica` | `mkdir subpractica` |
| 10 | Eliminar `subpractica` (si está vacío) | `rmdir subpractica` |

---

## 👤 2. Gestión de Usuarios y Permisos

| # | Descripción | Comando |
|---|-------------|---------|
| 11 | Crear un nuevo usuario `usuario_prueba` | `sudo useradd usuario_prueba` |
| 12 | Establecer contraseña para `usuario_prueba` | `sudo passwd usuario_prueba` |
| 13 | Ver UID y GID de `usuario_prueba` | `id usuario_prueba` |
| 14 | Crear un grupo llamado `grupo_prueba` | `sudo groupadd grupo_prueba` |
| 15 | Agregar `usuario_prueba` al `grupo_prueba` | `sudo usermod -aG grupo_prueba usuario_prueba` |
| 16 | Dar permisos `rwx` al propietario de `ejemplo_renombrado.txt` | `chmod 700 ejemplo_renombrado.txt` |
| 17 | Cambiar el propietario del archivo a `usuario_prueba` | `sudo chown usuario_prueba ejemplo_renombrado.txt` |
| 18 | Cambiar el grupo del archivo a `grupo_prueba` | `sudo chgrp grupo_prueba ejemplo_renombrado.txt` |
| 19 | Visualizar permisos del archivo | `ls -l ejemplo_renombrado.txt` |
| 20 | Eliminar `usuario_prueba` y su directorio home | `sudo userdel -r usuario_prueba` |

---

## 🔍 3. Manipulación y Búsqueda de Contenido

| # | Descripción | Comando |
|---|-------------|---------|
| 21 | Escribir `Hola, Linux!` en el archivo | `echo "Hola, Linux!" > ejemplo_renombrado.txt` |
| 22 | Ver el contenido del archivo | `cat ejemplo_renombrado.txt` |
| 23 | Buscar la palabra `Linux` en el archivo | `grep "Linux" ejemplo_renombrado.txt` |
| 24 | Buscar archivos `.txt` en el directorio home | `find ~/ -name "*.txt"` |
| 25 | Agregar `Adiós, Linux!` sin borrar el contenido | `echo "Adiós, Linux!" >> ejemplo_renombrado.txt` |
| 26 | Ver las últimas líneas del archivo | `tail ejemplo_renombrado.txt` |
| 27 | Ver las primeras líneas del archivo | `head ejemplo_renombrado.txt` |
| 28 | Escribir y ordenar una lista de frutas | `echo -e "Manzana\nBanana\nCiruela\nDurazno" \| sort` |
| 29 | Contar palabras en el archivo | `wc -w ejemplo_renombrado.txt` |
| 30 | Comprimir el archivo | `gzip ejemplo_renombrado.txt` |

---

## ⚙️ 4. Gestión de Paquetes y Procesos

| # | Descripción | Comando |
|---|-------------|---------|
| 31 | Instalar el paquete `htop` | `sudo apt-get install htop` |
| 32 | Visualizar los procesos en ejecución | `htop` |
| 33 | Detener un proceso por su PID | `kill [PID]` |
| 34 | Ver los procesos en ejecución | `ps aux` |
| 35 | Revisar espacio en los sistemas de archivos | `df -h` |
| 36 | Ver espacio usado por el directorio `practica` | `du -sh practica` |
| 37 | Actualizar la lista de paquetes | `sudo apt-get update` |
| 38 | Actualizar todos los paquetes instalados | `sudo apt-get upgrade` |
| 39 | Revisar el estado del servicio SSH | `sudo systemctl status ssh` |
| 40 | Instalar `screen` e iniciar una sesión | `sudo apt-get install screen && screen` |

---

## 🌐 5. Trabajando con Redes

| # | Descripción | Comando |
|---|-------------|---------|
| 41 | Comprobar conectividad con `google.com` | `ping google.com` |
| 42 | Revisar la configuración de red | `ip a` |
| 43 | Ver conexiones de red activas | `netstat -tuln` |
| 44 | Conectarse a un servidor por SSH | `ssh [usuario]@[IP o dominio]` |
| 45 | Descargar un archivo desde internet | `wget [URL]` |
| 46 | Reiniciar la interfaz de red | `sudo systemctl restart networking` |
| 47 | Consultar registros DNS de un dominio | `dig [dominio]` |
| 48 | Ver la ruta de un paquete hacia su destino | `traceroute [dominio o IP]` |
| 49 | Conectarse a un servidor por SFTP | `sftp [usuario]@[IP o dominio]` |
| 50 | Resolver un dominio a su dirección IP | `host [dominio]` |

---¡
