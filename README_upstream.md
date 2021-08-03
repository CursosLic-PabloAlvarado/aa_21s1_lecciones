¿Cómo configurar un "upstream" para poder sincronizar con el repositorio original?
==================================================================================

( Tomado de: 
https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/configuring-a-remote-for-a-fork )

Como recordatorio: cuando usted sigue el enlace del Github Classroom,
lo que realiza es un "fork" del repositorio original del profesor.
Esa copia del repositorio se renombrará con un prefijo, que será el
nombre de usuario en git, o el nombre del grupo de trabajo.

Localmente se hará un clone a la copia del repositorio, de modo que
los comandos de push y pull actuarán contra esa copia.

Si el repositorio original del profesor cambia, por ejemplo cuando
cada semana se agreguen nuevas prácticas, la copia realizada
originalmente no se "entera" de esos cambios.

La solución tiene los siguientes dos pasos:
- Mezclar localmente los cambios directamente con el repositorio original
- Hacer el push de los cambios al repositorio copiado.

A continuación se explican en detalle esos dos pasos.

### Repositorios remotos

Usted puede ver la configuración de repositorios remotos con:

$ git remote -v

Usted puede entonces agregar un nuevo repositorio remoto
"upstream" contra el cual usted puede realizar actualizaciones:

$ git remote add upstream https://github.com/CursosLic-PabloAlvarado/aa_21s1_lecciones.git

Por supuesto usted puede nombrar "upstream" como lo desee.  Ese es el
nombre que por convención se usa como enlace para el origen al que se
le hizo "fork", pero puede llamarlo como quiera.  Lo anterior solo hay
que hacerlo una única vez.

Para verificar que ese repositorio remoto esté configurado, pruebe de nuevo:

$ git remote -v

y eso puede verificarlo siempre, si no recuerda haberlo configurado.


¿Cómo actualizar el repositorio desde "upstream"?
=================================================

Una vez configurado el "upstream", cada vez que usted quiera mezclar
cambios hechos en él con su versión, asegúrese de haber subido todos
los cambios en la rama en la que esté trabajando (es decir, hacer los
"commit" de todos sus cambios).

Si estuviese trabajando en equipo, usualmente solo uno de los miembros
del equipo actualiza al repositorio y posteriormente los otros
miembros pueden sincronizarse con el repositorio ya actualizado.

Asegúrese entonces de estar en su rama "main" (a veces se llama "master") con

$ git checkout main     # (o git checkout master)

y baje todos los cambios del repositorio "upstream"

$ git fetch upstream

Ahora, asegúrese de que la rama "main" tenga todos los cambios hechos en "upstream"

$ git pull upstream main     # (o git pull upstream master)

Si da un error, puede ser necesario habilitar este tipo de operación con 

git pull upstream main --allow-unrelated-histories  # (o master)

y agregue los cambios hechos en el main de su repositorio remoto

$ git push

Finalmente puede regresar a su rama de trabajo

$ git checkout <mi_rama_de_trabajo>

e incorporar los cambios hechos, que ya estan en su master

$ git merge master


Los otros miembros del grupo hacen commit de lo estén trabajando, y actualizan el repositorio con

$ git pull
$ git merge master

