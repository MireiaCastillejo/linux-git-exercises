### Parte II: Ejercicios Git
1. Crea un nuevo proyecto e inicializa git
```sh

mkdir gitproject && cd gitproject
git init

```
2. Añade una regla para ignorar los ficheros de tipo .sh
```sh
nano .gitignore
```
3. Crea dos ficheros vacíos: demo1.txt y demo2.txt. Añade estos ficheros al stage
area.
```sh

touch demo1.txt demo2.txt
git add demo1.txt demo2.txt

```
4. Añade contenido al fichero demo1.txt. A continuación, realiza un commit con el mensaje “Modified demo1.txt”
```sh
nano demo1.txt
git add demo1.txt
git commit -m "Modified demo1.txt"
```
5. Añade contenido al fichero demo2. A continuación, realiza un commit con el mensaje “Modified demo3.txt”
```sh
nano demo2.txt
git add demo2.txt
git commit -m "Modified demo3.txt"
```
6. Rectifica el commit anterior con el mensaje “Modified demo2.txt”
```sh

git commit --amend -m "Modified demo2.txt"

```
7. Crea una nueva rama “develop” y añade un fichero script.sh que imprima por pantalla “Git 101”
```sh

git branch develop
git checkout develop
nano script.sh
```

8. Da permisos de ejecución al script
```sh
chmod +x script.sh

```
9. Realiza un merge (develop -> master) para integrar los cambios
```sh

git merge master develop

```
10. Sube todos los cambios a tu repositorio remoto

```sh

git checkout master 
git remote add origin https://github.com/MireiaCastillejo/linux-git-exercises
git push -u origin master

```

Ejecutar el siguiente comando e inclúyelo en tu repositorio para ver que todos los cambios solicitados se han realizado:
git log --oneline > verification.log
Indica todos los comandos que has utilizado para llevar a cabo cada uno de los puntos.