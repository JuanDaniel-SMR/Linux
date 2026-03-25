# 🐧 50 EJERCICIOS LINUX 🐧 

## Trabajando con directorios y archivos

1. Usa el comando `pwd` para mostrar tu directorio actual.
2. Crea un nuevo directorio llamado **'practica'** con el comando `mkdir`.
3. Ingresa al directorio **'practica'** utilizando `cd`.
4. Crea un archivo llamado **'ejemplo.txt'** usando el comando `touch`.
5. Lista el contenido del directorio actual con `ls`.
6. Usa `cp` para copiar **'ejemplo.txt'** a **'ejemplo_copia.txt'**.
7. Renombra **'ejemplo_copia.txt'** a **'ejemplo_renombrado.txt'** con `mv`.
8. Elimina **'ejemplo.txt'** usando el comando `rm`.
9. Crea un subdirectorio llamado **'subpractica'** con `mkdir`.
10. Usa el comando `rmdir` para intentar eliminar **'subpractica'** *(nota por qué puede o no funcionar)*.

## Gestión de usuarios y permisos

11. Crea un nuevo usuario llamado **'usuario_prueba'** con el comando `useradd` *(necesitarás derechos de superusuario)*.
12. Establece una contraseña para **'usuario_prueba'** con `passwd`.
13. Usa `id` para ver la información del UID y GID de **'usuario_prueba'**.
14. Crea un grupo llamado **'grupo_prueba'** con `groupadd`.
15. Agrega **'usuario_prueba'** al **'grupo_prueba'** con `usermod`.
16. Utiliza `chmod` para dar permisos de lectura, escritura y ejecución al propietario de **'ejemplo_renombrado.txt'**.
17. Usa `chown` para cambiar el propietario de **'ejemplo_renombrado.txt'** a **'usuario_prueba'**.
18. Usa `chgrp` para cambiar el grupo de **'ejemplo_renombrado.txt'** a **'grupo_prueba'**.
19. Visualiza los permisos del archivo **'ejemplo_renombrado.txt'** con `ls -l`.
20. Elimina el usuario **'usuario_prueba'** con el comando `userdel`.

## Manipulación y búsqueda de contenido

21. Escribe **"Hola, Linux!"** dentro de **'ejemplo_renombrado.txt'** usando `echo`.
22. Usa `cat` para ver el contenido de **'ejemplo_renombrado.txt'**.
23. Con `grep`, busca la palabra **"Linux"** dentro de **'ejemplo_renombrado.txt'**.
24. Utiliza `find` para buscar archivos con la extensión **'.txt'** en tu directorio home.
25. Agrega **"Adiós, Linux!"** a **'ejemplo_renombrado.txt'** sin eliminar el contenido original usando `>>`.
26. Usa `tail` para ver las últimas líneas de **'ejemplo_renombrado.txt'**.
27. Utiliza `head` para ver las primeras líneas del mismo archivo.
28. Combina los comandos `sort` y `echo` para escribir y ordenar alfabéticamente una lista de frutas.
29. Usa `wc` para contar las palabras en **'ejemplo_renombrado.txt'**.
30. Comprime **'ejemplo_renombrado.txt'** usando `gzip`.

## Gestión de paquetes y procesos

31. Instala el paquete **"htop"** usando `apt-get` o el gestor de paquetes de tu distribución.
32. Usa `htop` para visualizar los procesos en ejecución.
33. Identifica el PID de algún proceso y deténlo con `kill`.
34. Usa `ps` para ver los procesos que estás ejecutando.
35. Con `df`, revisa el espacio utilizado y disponible en tus sistemas de archivos.
36. Utiliza `du` para ver el espacio utilizado por el directorio **'practica'**.
37. Actualiza la lista de paquetes de tu sistema con `apt-get update` o el comando correspondiente de tu gestor de paquetes.
38. Actualiza todos los paquetes instalados con `apt-get upgrade` o el comando correspondiente.
39. Revisa el estado de un servicio (por ejemplo, ssh) con `systemctl`.
40. Instala y utiliza `screen` para iniciar una sesión persistente en el terminal.

## Trabajando con redes

41. Usa `ping` para comprobar la conectividad con **google.com**.
42. Con el comando `ifconfig` o `ip a`, revisa la configuración de tu red.
43. Usa `netstat` para visualizar las conexiones de red activas.
44. Con `ssh`, intenta conectarte a algún servidor *(si tienes uno disponible)*.
45. Usa `wget` o `curl` para descargar un archivo desde internet.
46. Si tienes permisos, reinicia la interfaz de red con `ifdown` y `ifup` o con `systemctl restart networking`.
47. Usa `dig` o `nslookup` para consultar registros DNS de un dominio.
48. Con `traceroute`, observa la ruta que toma un paquete hacia un destino.
49. Utiliza `ftp` o `sftp` para conectar a un servidor FTP y transferir archivos.
50. Con el comando `host`, resuelve un nombre de dominio a su dirección IP.
