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
<img width="268" alt="Captura de pantalla 2021-11-29 a las 19 22 59" src="https://user-images.githubusercontent.com/26769446/143927712-e9a7124a-1db3-4ec1-b941-e8b83ef89be8.png">
5. Añade contenido al fichero demo2. A continuación, realiza un commit con el mensaje “Modified demo3.txt”
```sh
nano demo2.txt
git add demo2.txt
git commit -m "Modified demo3.txt"
```
<img width="715" alt="Captura de pantalla 2021-11-29 a las 19 32 32" src="https://user-images.githubusercontent.com/26769446/143927851-8aeba057-db68-450c-afa5-9666d491ddc8.png">

6. Rectifica el commit anterior con el mensaje “Modified demo2.txt”
```sh

git commit --amend -m "Modified demo2.txt"

```
<img width="715" alt="Captura de pantalla 2021-11-29 a las 19 33 01" src="https://user-images.githubusercontent.com/26769446/143927907-6c5f4c99-1190-4019-8721-61fa327f506d.png">

7. Crea una nueva rama “develop” y añade un fichero script.sh que imprima por pantalla “Git 101”
```sh

git branch develop
git checkout develop
nano script.sh
```
<img width="711" alt="Captura de pantalla 2021-11-29 a las 19 33 54" src="https://user-images.githubusercontent.com/26769446/143927969-d66fd0f7-283c-479e-a75d-b5e3f7d39a75.png">

8. Da permisos de ejecución al script
```sh
chmod +x script.sh

```
9. Realiza un merge (develop -> master) para integrar los cambios
```sh

git merge master develop

```
<img width="1422" alt="Captura de pantalla 2021-11-29 a las 19 36 22" src="https://user-images.githubusercontent.com/26769446/143927999-46eff43b-58ad-452a-8746-64d3fe095922.png">

10. Sube todos los cambios a tu repositorio remoto

```sh

git checkout master 
git remote add origin https://github.com/MireiaCastillejo/linux-git-exercises
git push -u origin master

```
<img width="1422" alt="Captura de pantalla 2021-11-29 a las 19 48 20" src="https://user-images.githubusercontent.com/26769446/143928055-14f18a91-08ce-454e-8789-f68a1e12083c.png">

Ejecutar el siguiente comando e inclúyelo en tu repositorio para ver que todos los cambios solicitados se han realizado:
git log --oneline > verification.log
Indica todos los comandos que has utilizado para llevar a cabo cada uno de los puntos.
