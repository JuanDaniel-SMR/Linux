Perfecto, aquí tienes tu texto con el formato Markdown (.md) adecuado para que se vea bien en GitHub, con títulos, numeraciones limpias y bloques de código bien presentados:

🐧 50 Ejercicios Prácticos de Comandos Linux
Si has trabajado en los 50 ejercicios prácticos de comandos Linux, aquí te traigo las soluciones.
Veamos cómo se realizan estos comandos paso a paso 👇

1. Trabajando con directorios y archivos
Mostrar tu directorio actual:

bash
pwd
Crear un nuevo directorio llamado practica:

bash
mkdir practica
Ingresar al directorio practica:

bash
cd practica
Crear un archivo llamado ejemplo.txt:

bash
touch ejemplo.txt
Listar el contenido del directorio actual:

bash
ls
Copiar ejemplo.txt a ejemplo_copia.txt:

bash
cp ejemplo.txt ejemplo_copia.txt
Renombrar ejemplo_copia.txt a ejemplo_renombrado.txt:

bash
mv ejemplo_copia.txt ejemplo_renombrado.txt
Eliminar ejemplo.txt:

bash
rm ejemplo.txt
Crear un subdirectorio llamado subpractica:

bash
mkdir subpractica
Eliminar subpractica (si está vacío):

bash
rmdir subpractica
2. Gestión de usuarios y permisos
Crear un nuevo usuario llamado usuario_prueba:

bash
sudo useradd usuario_prueba
Establecer una contraseña para usuario_prueba:

bash
sudo passwd usuario_prueba
Ver la información del UID y GID de usuario_prueba:

bash
id usuario_prueba
Crear un grupo llamado grupo_prueba:

bash
sudo groupadd grupo_prueba
Agregar usuario_prueba al grupo grupo_prueba:

bash
sudo usermod -aG grupo_prueba usuario_prueba
Dar permisos 700 al propietario de ejemplo_renombrado.txt:

bash
chmod 700 ejemplo_renombrado.txt
Cambiar el propietario del archivo a usuario_prueba:

bash
sudo chown usuario_prueba ejemplo_renombrado.txt
Cambiar el grupo del archivo a grupo_prueba:

bash
sudo chgrp grupo_prueba ejemplo_renombrado.txt
Ver permisos y propietarios del archivo:

bash
ls -l ejemplo_renombrado.txt
Eliminar el usuario usuario_prueba (junto con su directorio):

bash
sudo userdel -r usuario_prueba
3. Manipulación y búsqueda de contenido
Escribir “Hola, Linux!” dentro del archivo:

bash
echo "Hola, Linux!" > ejemplo_renombrado.txt
Ver el contenido del archivo:

bash
cat ejemplo_renombrado.txt
Buscar la palabra “Linux” dentro del archivo:

bash
grep "Linux" ejemplo_renombrado.txt
Buscar archivos .txt en tu directorio home:

bash
find ~/ -name "*.txt"
Agregar “Adiós, Linux!” al final del archivo:

bash
echo "Adiós, Linux!" >> ejemplo_renombrado.txt
Ver las últimas líneas del archivo:

bash
tail ejemplo_renombrado.txt
Ver las primeras líneas del archivo:

bash
head ejemplo_renombrado.txt
Escribir y ordenar una lista de frutas:

bash
echo -e "Manzana\nBanana\nCiruela\nDurazno" | sort
Contar las palabras del archivo:

bash
wc -w ejemplo_renombrado.txt
Comprimir el archivo:

bash
gzip ejemplo_renombrado.txt
4. Gestión de paquetes y procesos
Instalar el paquete htop:

bash
sudo apt-get install htop
Visualizar procesos en ejecución:

bash
htop
Detener un proceso con su PID:

bash
kill [PID]
Ver los procesos activos:

bash
ps aux
Revisar el espacio utilizado en disco:

bash
df -h
Ver el espacio usado por el directorio practica:

bash
du -sh practica
Actualizar la lista de paquetes:

bash
sudo apt-get update
Actualizar todos los paquetes instalados:

bash
sudo apt-get upgrade
Revisar el estado de un servicio (ej. ssh):

bash
sudo systemctl status ssh
Instalar y usar screen:

bash
sudo apt-get install screen
screen
5. Trabajando con redes
Comprobar conectividad con Google:

bash
ping google.com
Revisar la configuración de la red:

bash
ip a
Ver conexiones activas:

bash
netstat -tuln
Conectarte a un servidor vía SSH:

bash
ssh [usuario]@[IP o dominio]
Descargar un archivo con wget:

bash
wget [URL]
Reiniciar la interfaz de red:

bash
sudo systemctl restart networking
Consultar registros DNS de un dominio:

bash
dig [dominio]
Ver la ruta que sigue un paquete:

bash
traceroute [dominio o IP]
Conectarte a un servidor con sftp:

bash
sftp [usuario]@[IP o dominio]
Resolver un nombre de dominio a IP:

bash
host [dominio]
