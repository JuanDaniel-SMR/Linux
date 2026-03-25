# 🐧 Comandos Linux

## Información del sistema

| Comando | Descripción |
|---------|-------------|
| `man <comando>` | Muestra el manual de un comando |
| `whoami` | Muestra el usuario actual conectado |
| `who` | Muestra todas las sesiones abiertas, IPs y fechas de conexión |
| `w` | Muestra los usuarios conectados (sin mostrar sesiones) |
| `date` | Muestra la fecha y hora actual |
| `cal` | Muestra el calendario del mes actual |
| `free` | Muestra la memoria disponible en el equipo |

---

## Navegación y sistema de ficheros

| Comando | Descripción |
|---------|-------------|
| `pwd` | Muestra el directorio de trabajo actual |
| `cd <ruta>` | Cambia de directorio |
| `ls` | Lista el contenido del directorio actual |
| `ls -a` | Incluye ficheros ocultos |
| `ls -l` | Enseña los permisos de los ficheros y directorios |
| `tree` | Muestra carpetas y ficheros de forma esquematizada |

---

## Gestión de ficheros y directorios

| Comando | Descripción |
|---------|-------------|
| `file <fichero>` | Muestra información sobre un fichero |
| `touch <nombre>` | Crea un fichero vacío |
| `rm <fichero>` | Borra un fichero |
| `mkdir <nombre>` | Crea una carpeta |
| `rmdir <nombre>` | Borra una carpeta vacía |
| `mv <origen> <destino>` | Mueve o renombra ficheros y directorios |
| `mv <nombre viejo> <nombre nuevo> | Renombra ficheros y directorios |

---

## Lectura y escritura de ficheros

| Comando | Descripción |
|---------|-------------|
| `cat <fichero>` | Muestra todo el contenido de un fichero |
| `more <fichero>` | Muestra el contenido por páginas |
| `less <fichero>` | Como `more`, pero sin cargar el fichero entero (libera memoria) |
| `echo <texto>` | Escribe texto (en pantalla o redirigido a un fichero) |

---

## Redirección y tuberías

| Operador | Descripción |
|----------|-------------|
| `\|` | **Tubería** — conecta la salida de un comando a la entrada de otro |
| `>` | Sobreescribe (machaca) el contenido de un fichero con la salida |
| `>>` | Añade la salida al final de un fichero sin sobreescribirlo |

---

## Comandos de sesión

| Comando | Descripción |
|---------|-------------|
| `exit` | Sale de la sesión actual |
| `byobu-disable-prompt` + `exit` | Desactiva el modo Byobu (colores de `hollywood`, etc.) |

---

## Administración (requiere permisos)

| Comando | Descripción |
|---------|-------------|
| `sudo pkill -f sshd` | ⚠️ Echa a todos los usuarios del servidor **(solo ROOT)** |
| `sudo passwd <usuario>` | Cambia la contraseña de un usuario **(siendo ROOT)** |

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
