# 🐧 Comandos Linux

## Sistema 

| Comando | Descripción |
|---------|-------------|
| `arch` | Muestra la arquitectura de la CPU |
| `uname -r` | Muestra la versión del Kernel usado |
| `cat /proc/cpuinfo` | Muestra información del CPU |
| `man <comando>` | Muestra el manual de un comando |
| `whoami` | Muestra el usuario actual conectado |
| `who` | Muestra todas las sesiones abiertas, IPs y fechas de conexión |
| `w` | Muestra los usuarios conectados (sin mostrar sesiones) |
| `date` | Muestra la fecha y hora actual |
| `cal` | Muestra el calendario del mes actual |
| `free` | Muestra la memoria disponible en el equipo |
| `df` | Muestra el almacenamiento del equipo de forma detallada | 
| `df -lh` | Muestra el almacenamiento del equipo con flags |
| `md5sum` | Calcula y verifica firmas MD5 |
| `reboot` | Reinicia el sistema | 
| `sudo su` | Entras como root al sistema. |
| `du -sh` | Muestra el espacio usado por un directorio. |

---

## Navegación y sistema de ficheros y directorios.

| Comando | Descripción |
|---------|-------------|
| `pwd` | Muestra el directorio de trabajo actual |
| `cd <ruta>` | Cambia de directorio |
| `cd ..` | Retrodecer un directorio |
| `cd ../..` | Retroceder 2 directorios |
| `ls` | Lista el contenido del directorio actual |
| `ls -a` | Incluye ficheros ocultos |
| `ls -l` | Enseña los permisos de los ficheros y directorios |
| `ls -F` | Ver los ficheros de un directorio |
| `ls [0-9]` | Ver ficheros y directorios
| `tree` | Muestra carpetas y ficheros de forma esquematizada |
| `file <fichero>` | Muestra información sobre un fichero |
| `touch <nombre>` | Crea un fichero vacío |
| `rm <fichero>` | Borra un fichero |
| `mkdir <nombre>` | Crea una carpeta |
| `rmdir <nombre>` | Borra una carpeta vacía |
| `mv <origen> <destino>` | Mueve o renombra ficheros y directorios |
| `mv <nombre viejo> <nombre nuevo>` | Renombra ficheros y directorios |
| `cp` | Copia ficheros y directorios |
| `cp -r` | Copia un directorio y su contenido interior. |
| `gzip` | Comprime un fichero. |
| `sudo apt-get install` | Instala un paquete |
| `sudo apt-get update` | Actualiza la lista de paquetes. | 
| `sudo apt-get upgrade` | Actualiza todos los paquetes ya instalados. |

---

## Lectura y escritura de ficheros

| Comando | Descripción |
|---------|-------------|
| `cat <fichero>` | Muestra todo el contenido de un fichero |
| `more <fichero>` | Muestra el contenido por páginas |
| `less <fichero>` | Como `more`, pero sin cargar el fichero entero (libera memoria) |
| `echo <texto>` | Escribe texto (en pantalla o redirigido a un fichero) |
| `head <fichero>` | Muestra las primeras líneas de un fichero |
| `tail <fichero>`| Muestra las ultimas líneas de un fichero |

---

## Enlaces 

| Comando | Descripción |
|---------|-------------|
| `ln` | Crea un enlace duro |
| `ln -s` | Crea un enlace simbólico |

---

## Redirección y tuberías

| Operador | Descripción |
|----------|-------------|
| `\|` | **Tubería** — conecta la salida de un comando a la entrada de otro |
| `>` | Sobreescribe (machaca) el contenido de un fichero con la salida |
| `>>` | Añade la salida al final de un fichero sin sobreescribirlo |
| `<`| Añade la salida del fichero al comando |
| `find` | Busca ficheros y directorios (POR SU NOMBRE) |
| `sort` | Ordena lineas de texto |
| `grep` | Busca lineas de texto DENTRO de los ficheros. |
| `wc` | Cuentas las lineas dentro de un fichero. |
| `wc -w` | Cuentas las palabras dentro de un fichero. |
| `cut` | Extrae texto de un fichero por partes |
| `sed` | Edita texto de un fichero |
| `time` | Mide el tiempo de ejecución de un comando |

---

## Comandos de sesión

| Comando | Descripción |
|---------|-------------|
| `reboot` | Reinicia el sistema | 
| `sudo su` | Entras como root al sistema. |
| `exit` | Sale de la sesión actual |
| `byobu-disable-prompt` + `exit` | Desactiva el modo Byobu (colores de `hollywood`, etc.) |

---

## Usuarios y Grupos 

| Comando | Descripción |
|---------|-------------|
| `sudo pkill -f sshd` | ⚠️ Echa a todos los usuarios del servidor **(solo ROOT)** |
| `sudo passwd <usuario>` | Cambia la contraseña de un usuario **(siendo ROOT)** |
| `sudo adduser <usuario>`| Añade un usuario al sistema. |
| `sudo deluser <usuario>`| Elimina un usuario del sistema. |
| `sudo useradd <usuario>`| Añade un usuario al sistema. (2)  |
| `sudo userdel -r <usuario>`| Elimina un usuario del sistema. y su directorio home |
| `id` | Muestra el UID y GID de un usuario |
| `chgrp` | Cambia el grupo de un fichero o directorio |
| `groupadd <grupo>` | Crea un nuevo grupo. |
| `groupdel <grupo>` | Elimina un grupo existente. |
| `groupmod -n <nuevo_nombre> <viejo_nombre>`| Modifica el nombre de un grupo. |
| `passwd` | Cambia la contraseña de tu usuario |
| `chown` | Cambia el dueño de un fichero o directorio. | 

---

## Comandos sobre procesos 

| Comando | Descripción |
|---------|-------------|
| `ps` | Lista de los procesos activos en el sistema |
| `ps aux` | Lista de los procesos detallados con usuario, CPU y memoria. |
| `ps -ef` | Ver TODOS los procesos del sistema |
| `top` | Lista en tiempo real y dinámica de los procesos. | 
| `htop` | Versión mejorada del htop que puede gestionar los procesos. |
| `pstree` | Muestra los procesos en forma de arbol (igual que el comando tree) |
| `pgrep <nombre>` | Busca el PID del proceso basado en su nombre. |
| `kill` | Elimina un proceso |
| `nice` | Iniciar proceso (con prioridad mínima) |
| `renice`| Iniciar proceso (con prioridad) |
| `jobs` | Muestra los procesos en segundo plano |
| `bg` | Envia un proceso a segundo plano |
| `fg` | Envia un proceso a primer plano |
| `uptime`| Indica cuanto tiempo lleva encendido el sistema y la carga media de procesos | 
| `free`| Muestra el estado de la memoria RAM y del SWAP. |
| `sleep` | Pausa temporalmente la ejecución de un proceso. |
| `seq` | Genera una secuencia de numeros. |
| `for` | Crea un bucle en shell. |

---

## Permisos 
| Comando | Descripción |
|---------|-------------|
| `ls -l` | Lista de los directorios y ficheros con los permisos que tienen. |
| `chmod` | Cambia los permisos de ficheros y directorios |
| `umask` | Muestra/Establece los permisos por defecto |

---

## Redes

| Comando | Descripción |
|---------|-------------|
| `ping` | Comprueba la conectividad con un host |
| `ip a` | Muestra la configuración de red. |
| `netstat` | Muestra conexiones de red activas. |
| `ssh` | Conectarse a un servidor remoto (Medusa por ejemplo) |
| `wget`| Descarga ficheros de internet. |
| `dig` | Consulta registros DNS de un host. |
| `traceroute` | Muestra la ruta de un paquete. |
| `sftp` | Conexión segura para transferencia de ficheros. |
| `host` | Resuelve un dominio a su IP. |
| `systemctl status` | Muestra el estado de un servicio. |
| `systemctl restart` | Reinicia un servicio. |
| `screen`| Inicia una sesion de terminal persistente. |

---

## Comandos de entretenimiento 🎉

| Comando | Descripción |
|---------|-------------|
| `sl` | Aparece un tren animado |
| `cmatrix` | Simula la pantalla de Matrix |
| `hollywood` | Simula una pantalla de hacker con colores |
| `cowsay <texto>` | Una vaca dibujada que "dice" el texto |
| `figlet <texto>` | Escribe el texto en estilo ASCII art (lettering) |
| `fortune` | Muestra una frase célebre aleatoria |

---

