# 🐧 Ejercicios de Comandos Linux

Colección de 100 ejercicios prácticos para aprender comandos de Linux, organizados por temáticas.

---

## Índice

- [📁 Listado y navegación de archivos](#-listado-y-navegación-de-archivos)
- [📂 Gestión de directorios y archivos](#-gestión-de-directorios-y-archivos)
- [🔗 Enlaces (hard y simbólicos)](#-enlaces-hard-y-simbólicos)
- [🔐 Permisos](#-permisos)
- [🔍 Búsqueda de archivos](#-búsqueda-de-archivos)
- [↔️ Redirección y tuberías](#️-redirección-y-tuberías)
- [⚙️ Procesos](#️-procesos)
- [🛠️ Comandos de sistema](#️-comandos-de-sistema)

---

## 📁 Listado y navegación de archivos

**1. Listar todos los archivos del directorio `/bin`**
```bash
ls /bin
```

**2. Listar todos los archivos del directorio `/tmp`**
```bash
ls /tmp
```

**3. Listar archivos de `/etc` que empiecen por `t`, en orden inverso**
```bash
ls -r /etc/t*
```

**4. Listar archivos de `/dev` que empiecen por `tty` y tengan 5 caracteres**
```bash
ls /dev/tty??
```

**5. Listar archivos de `/dev` que empiecen por `tty` y acaben en 1, 2, 3 o 4**
```bash
ls /dev/tty*[1-4]
```

**6. Listar archivos de `/dev` que empiecen por `t` y acaben en `C1`**
```bash
ls /dev/t*c1
```

**7. Listar todos los archivos (incluidos ocultos) del directorio raíz**
```bash
ls -a /
```

**8. Listar archivos de `/etc` que NO empiecen por `t`**
```bash
ls -d /etc/[^t]*
```

**9. Listar todos los archivos de `/usr` y sus subdirectorios**
```bash
ls -R /usr
```

---

## 📂 Gestión de directorios y archivos

**10. Ir a `/tmp` y crear el directorio `PRUEBA`**
```bash
cd /tmp
mkdir PRUEBA
```

**11. Verificar el directorio actual**
```bash
pwd
```

**12. Mostrar el día y la hora actual**
```bash
date
```

**13. Ir al directorio `$HOME` con un solo comando**
```bash
cd /home
```

**14. Verificar que estamos en `$HOME`**
```bash
pwd
```

**15. Listar ficheros del directorio `HOME` mostrando su número de inodo**
```bash
ls -i
```

**16. Borrar todos los archivos y directorios visibles de `PRUEBA`**
```bash
rm -rf PRUEBA/*
```

**17. Crear estructura de directorios dentro de `PRUEBA`**

Estructura a crear:
```
PRUEBA/
├── dir1/
│   └── dir11/
├── dir2/
└── dir3/
    └── dir31/
        ├── dir311/
        └── dir312/
```

```bash
mkdir PRUEBA/dir1
mkdir PRUEBA/dir1/dir11
mkdir PRUEBA/dir2
mkdir PRUEBA/dir3
mkdir PRUEBA/dir3/dir31
mkdir PRUEBA/dir3/dir31/dir311
mkdir PRUEBA/dir3/dir31/dir312
```

**18. Copiar `/etc/motd` a `PRUEBA/mensaje`**
```bash
sudo touch /etc/motd PRUEBA/mensaje
```

**19. Copiar `mensaje` en `dir1`, `dir2` y `dir3`**
```bash
cd PRUEBA
cp mensaje dir1/mensaje && cp mensaje dir2/mensaje && cp mensaje dir3/mensaje
```

**20. Comprobar el ejercicio anterior con un solo comando**
```bash
ls -R PRUEBA
```

**21. Copiar archivos de `/etc/rc.d` al directorio `dir31`**
```bash
cp -r /etc/rc.d dir31
```

**22. Copiar en `dir311` los archivos de `/bin` con `a` como segunda letra y nombre de 4 letras**
```bash
cp -r /bin/?a?? PRUEBA/dir3/dir31/dir311
```

**23. Copiar el directorio de otro usuario y sus subdirectorios debajo de `dir11`**
```bash
sudo cp -r ../usuario2 PRUEBA/dir1/dir11
```

**24. Mover `dir31` y sus subdirectorios debajo de `dir2`**
```bash
mv PRUEBA/dir3/dir31 PRUEBA/dir2
```

**25. Mostrar los archivos ordinarios del directorio `HOME` y sus subdirectorios**
```bash
ls -R $HOME
```

**26. Ocultar el archivo `mensaje` del directorio `dir3`**
```bash
mv PRUEBA/dir3/mensaje PRUEBA/dir3/.mensaje
```

**27. Borrar archivos y directorios de `dir1`, incluido el propio directorio**
```bash
rm -rf PRUEBA/dir1
```

**28. Copiar a `dir312` los ficheros de `/dev` que empiecen por `t`, acaben entre `a` y `b`, y tengan 5 letras**
```bash
cp /dev/t???[a*b] /home/ubuntu/PRUEBA/dir3/dir31/dir312
```

**29. Borrar archivos de `dir312` que no acaben en `b` y tengan `q` como cuarta letra**
```bash
rm -r PRUEBA/dir2/dir31/dir312/???q[^b]
```

**30. Mover `dir312` debajo de `dir3`**
```bash
mv PRUEBA/dir2/dir31/dir312 PRUEBA/dir3
```

---

## 🔗 Enlaces (hard y simbólicos)

**31. Crear un enlace simbólico a `dir1` dentro de `dir3` llamado `enlacedir1`**
```bash
ln -s /home/ubuntu/PRUEBA/dir1 PRUEBA/dir3/enlacedir1
```

**32. Desde `dir3`, crear el directorio `nuevo1` dentro de `dir1` usando el enlace**
```bash
cd dir3
mkdir enlacedir1/nuevo1
```

**33. Copiar archivos que empiecen por `u` de `/bin` en `nuevo1` usando el enlace**
```bash
cp -r /bin/u* enlacedir1/nuevo1/
```

**34. Crear dos enlaces duros de `fich1` en `dir1` y `dir2`**
```bash
ln fich1 dir1/enlace
ln fich1 dir2/enlace
```

**35. Borrar `fich1` y copiar `enlace` en `dir3`**
```bash
rm fich1
cp dir1/enlace dir3/
```

**36. Crear un enlace simbólico (`enlafich1`) al fichero `enlace` de `dir2` en `dir1`**
```bash
ln -s /home/ubuntu/PRUEBA/dir2 /home/ubuntu/PRUEBA/dir1/enlafich1
```

**37. Desde `dir1`, copiar `fich1` en `dir311` usando el enlace**
```bash
cd dir1
cp enlafich1 ../dir2/dir31/dir311/fich1
```

**38. Mostrar las líneas del archivo `fich1` usando el enlace simbólico**
```bash
cat enlafich1
```

**39. Borrar `fich1` de `dir2`**
```bash
rm dir2/fich1
```

**40. Borrar todos los archivos y directorios creados durante los ejercicios**
```bash
rm -r *
```

---

## 🔐 Permisos

**41. Crear `dir2` y `dir3` en `PRUEBA` y ver los permisos actuales de `dir2`**
```bash
mkdir dir1
mkdir dir2
ls -l
```

**42. Eliminar todos los permisos de escritura de `dir2` (notación simbólica)**
```bash
chmod 555 dir2
```

**43. Eliminar el permiso de lectura de `dir2` para el resto de usuarios (notación octal)**
```bash
chmod 551 dir2
```

**44. Ver los permisos actuales de `dir2`**
```bash
ls -l
```

**45. Crear `dir21` dentro de `dir2`**
```bash
mkdir dir2/dir21
# ⚠️ No se puede crear: permiso denegado
```

**46. Concederse permiso de escritura en `dir2` e intentar de nuevo**
```bash
chmod 751 dir2
mkdir dir2/dir21
```

**47. Ver los valores por omisión asignados a los archivos**
```bash
ls -l dir2
```

**48. Ir a `dir3` y verificar la trayectoria completa**
```bash
cd ..
cd dir3
ls -lR
```

**49. Ver los permisos del directorio actual**
```bash
ls -lR
```

**50. Reiniciar el ordenador**
```bash
reboot
```

**51. Crear cuatro directorios (`dira`, `dirb`, `dirc`, `dird`) en el directorio actual**
```bash
mkdir dira dirb dirc dird
```

**52. Comprobar los permisos de acceso de los directorios creados (`umask`)**
```bash
ls -l
```

**53. Crear `uno`, quitarle todos los permisos de lectura e intentar borrarlo**
```bash
touch uno
chmod a-r uno
ls -l
rm uno
```

**54. Quitar todos los permisos de paso a `dir2` y otorgarle todos los demás**
```bash
chmod = dir2
chmod o=rwx dir2
```

**55. Crear estructura de carpetas y ficheros con permisos específicos**

```bash
# carpeta1: rwx para propietario
mkdir carpeta1
chmod u=rwx,g=,o= carpeta1

# fich1: rw para todos | fich2: rw propietario, r resto
touch carpeta1/fich1 carpeta1/fich2
chmod = carpeta1/fich1
chmod = carpeta1/fich2
chmod o=rw carpeta1/fich1
ls -l

# carpeta2: rwx propietario, rx grupo
mkdir carpeta2
chmod u=rwx,g=rx,o= carpeta2

# file1: rw propietario y grupo | file2: rw propietario, r grupo
touch carpeta2/file1 carpeta2/file2
chmod = carpeta2/file1
chmod = carpeta2/file2
chmod u=rw,g=rw carpeta2/file1
chmod u=rw,g=r carpeta2/file2
ls -l
```

**56. Desde otro usuario, probar las operaciones posibles en los ficheros y directorios creados**
```bash
ls -lR
```

---

## 🔍 Búsqueda de archivos

**57. Ver la trayectoria actual y crear `correo` y `fuentes`**
```bash
mkdir correo fuentes
```

**58. Ir a `fuentes` y crear `dir1`, `dir2`, `dir3`**
```bash
cd fuentes
mkdir dir1 dir2 dir3
```

**59. Crear `menus` bajo `correo` sin moverse del directorio actual**
```bash
mkdir ../correo/menus
```

**60. Ir a `$HOME` y borrar los directorios de `fuentes` que acaben en un número que no sea 1**
```bash
cd $HOME
```

**61. Ver si existe `tty2` en `/dev` y su fecha de actualización**
```bash
find PRUEBA/fuentes -type d -name "tty2" -exec ls -l {} \;
```

**62. Ver los permisos de archivos en `/dev` que empiecen por `tt`**
```bash
ls -l /dev/tt*
```

**63. Listar los archivos ordinarios de `/usr/bin`**
```bash
find /usr/bin -type d -name "*" -exec ls -l {} \;
```

**64. Listar todos los directorios que cuelgan del raíz**
```bash
find / -type d -name "*" -exec ls {} \;
```

**65. Listar todos los ficheros que pertenezcan a `root`**
```bash
find / -user root -type f
```

**66. Listar todos los ficheros `.h` del directorio `/usr/include`**
```bash
find /usr/include -type f -regex ".*.h"
```

**67. Ejecutar todos los comandos que empiecen por `ls` del directorio `/bin`**
```bash
ls /bin/ls*
```

**68. Ver de qué tipo son los ficheros del árbol del sistema de un usuario conocido**
```bash
find /home/ubuntu -exec file --mime-type -0 '{}' \;
```

**69. Crear `uno` con permisos: rw+x propietario, rx grupo, ninguno para otros**
```bash
mkdir uno
chmod u=rw,g=rw,o= uno
ls -ld uno
```

**70. Crear `uno1` dentro de `uno` con todos los permisos para el usuario, ninguno para grupo, w para otros**
```bash
chmod u=rwx,g=rwx,o= uno
mkdir uno/uno1
chmod u=rwx,g=,o=w uno/uno1
ls -ld uno/uno1
```

**71. Copiar ficheros de un usuario conocido que acaben en número al directorio `menus`**
```bash
find /home/usuario2 -type f -regex ".*[0-9]" -exec cp -r '{}' PRUEBA/correo/menus/ \;
```

---

## ↔️ Redirección y tuberías

**72. Visualizar usuarios conectados y sus terminales; enviar mensaje a un terminal**
```bash
sudo -s
```

**73. Crear un archivo de tamaño 0**
```bash
touch archivo_tamaño_cero
```

**74. Visualizar el archivo `/etc/motd`**
```bash
cat /etc/motd
```

**75. Guardar, ordenadas por hora, las líneas del usuario actual en `persona`**
```bash
who | grep $USER | sort -k 4 > persona
```

**76. Crear `carpeta` sin permisos de lectura y guardar directorios del HOME en `direc`**
```bash
mkdir carpeta
chmod a-r carpeta
find ~ -type d > direc
```

**77. Redirigir los errores al fichero `malos`**
```bash
find ~ -type d 2> malo
```

**78. Añadir a `direc` la lista de ficheros ordinarios que cuelguen de `/etc`**
```bash
find /etc -type f >> direc
```

**79. Añadir a `nuevalista` los ficheros de `PRUEBA` que contengan `"ai"` en su nombre**
```bash
find ./ -type f -iname *ai* 1> nuevalista 2> malos
```

**80. Mostrar solo el tiempo de ejecución del comando `who`**
```bash
time who
```

---

## ⚙️ Procesos

**81. Listar completo de procesos del usuario `root`**
```bash
ps -U root -u root u
```

**82. Crear `proceso` con los procesos sin terminal asignado**
```bash
ps -U root -u root u | grep -v "'ls /dev'"
```

**83. Añadir fecha actual y directorio actual al fichero anterior**
```bash
echo "'date +"%A %D"' - 'pwd'" >> nuevalista
```

**84. Listar usuarios conectados ordenados por número de proceso**
```bash
ps axu
```

**85. Ver la actividad actual del sistema (todos los procesos)**
```bash
top -d 1 -n 10
```

**86. Listar datos de los procesos del shell actual**
```bash
ps -e
```

---

## 🛠️ Comandos de sistema

**87. Mostrar cuántos usuarios tiene registrados el sistema**
```bash
cat /etc/passwd | wc -l
```

**88. Mostrar usuarios que utilizan `bash`**
```bash
cat /etc/passwd | grep bash
```

**89. Mostrar cuántos usuarios hay conectados**
```bash
who -q
```

**90. Mostrar líneas de un archivo que empiecen por `L` (mayúscula o minúscula)**
```bash
man gcc > gcc.man_page
cat gcc.man_page | sed -e 's/ //g' > file.filled
cat file.filled | grep ^[Ll]
```

**91. Contar las líneas del ejemplo anterior**
```bash
cat file.filled | grep ^[Ll] | wc -l
```

**92. Extraer los nombres de usuario (primer campo) del sistema**
```bash
cat /etc/passwd | cut -d ':' -f 1
```

**93. Extraer nombres de usuario y shell que utilizan**
```bash
gawk -F: '{print $1, $7}' /etc/passwd
```

**94. Cambiar la fecha de creación de un archivo**
```bash
touch -t 8810011101 good
ls -l good
```

**95. Calcular la firma MD5 de un archivo**
```bash
md5sum good
```

**96. Modificar la firma MD5 y detectar el cambio**
```bash
md5sum good > good.MD5
md5sum -c good.MD5
# Modificar el archivo...
md5sum -c good.MD5
```

**97. Monitorear la ocupación de las particiones en los discos**
```bash
df -lh
```

**98. Ver qué proceso carga más el procesador (10 iteraciones)**
```bash
for x in `seq 1 10`; do
  ps -eo pid,pcpu,pmem,user,args | sort -r -k 2 | head -n 2
  sleep 3
done
```

**99. Comprobar si el proceso `bash` está corriendo**
```bash
ps -eo pid,pcpu,pmem,user,args | grep bash
```

**100. Contar cuántos procesos que empiecen por `k` están corriendo**
```bash
ps -eo args | cut -d ' ' -f 1 | grep ^k | wc -l
```

---

> 💡 **Nota:** Algunos comandos requieren permisos de superusuario (`sudo`). Úsalos con precaución en entornos de producción.
