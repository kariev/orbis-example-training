Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Volutpat maecenas volutpat blandit aliquam etiam erat. Lorem mollis aliquam ut porttitor. Proin libero nunc consequat interdum varius sit amet mattis vulputate. Faucibus a pellentesque sit amet porttitor eget dolor. Scelerisque varius morbi enim nunc.

Erat imperdiet sed euismod nisi porta. Imperdiet nulla malesuada pellentesque elit eget gravida cum. Velit dignissim sodales ut eu sem integer vitae justo. 


3. ¿Qué mensaje aparece?

remote: error: GH001: Large files detected. You may want to try Git Large File Storage - https://git-lfs.github.com.
remote: error: Trace: d8d23f05afd2bbbbfd0eaac5bcfd497e
remote: error: See http://git.io/iEPt8g for more information.
remote: error: File sc.16.tar.gz is 146.81 MB; this exceeds GitHub's file size limit of 100.00 MB
To github.com:kariev/orbis-example-training.git
 ! [remote rejected] master -> master (pre-receive hook declined)
error: failed to push some refs to 'git@github.com:kariev/orbis-example-training.git'


6. Explicar 
git verify-pack -v .git/objects/pack/pack-e121f70e46f7ec3df6d405dfb4895762265c6af7.idx
->Listar los archivos y examinar el tamaño de cada uno de ellos

git rev-list --objects --all
->Lista ek codigo del archivo al lado del nombre
git add . -> Trackear los cambios
git commit -> Guardar los cambios
git push -> subir los cambios al repositorio remoto github

PARTE 7 
Construir 
 -> docker build -t kariev115/orbis-training-docker:2.0.0 .
Ejecutar
-> docker run -w /app -v "d:/capacitacion/orbis-example-training":/app kariev115/orbis-training-docker:2.0.0 npm install
entrar al contenedor
-> docker run -it -w  /app -v "d:/capacitacion/orbis-example-training":/app kariev115/orbis-training-docker:2.0.0 bash

ejecutar un contenedor mediante el  puerto 35729 a traves del puerto 3030 
docker run -p "35729:3030" -p "3030:3030" -it -w  /app -v "d:/capacitacion/orbis-example-training":/app kariev115/orbis-training-docker:2.0.0 npm star
t

Cambiar el puerto del servidor, de 3030 al 1042
docker run -p "1042:3030" -it -w
-> /app -v "d:/capacitacion/orbis-example-training":/app kariev115/orbis-training-docker:2.0.0 npm start
 
10. Usando la imagen de docker, ejecutar npm run release 
-> docker run -p "1042:3030" -it -w  /app -v "d:/capacitacion/orbis-example-training":/app kariev115/orbis-training-docker:2.0.0 npm run release

