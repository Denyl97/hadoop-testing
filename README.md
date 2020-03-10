# hadoop-testing

Pasos para la configutacion de hadoop (Tomados del proyecto de Julio), los pasos son los mismos
del 1 hasta el 4: 

##### 1. Descargar imagen Docker

```
sudo docker pull juliop1980/hadoop-cluster
```

##### 2. Clonar repositorio de github

```
git clone https://github.com/juliop1980/hadoop-cluster
```

##### 3. rear red de hadoop

```
sudo docker network create --driver=bridge hadoop
```

##### 4. Ejecutar container

```
cd hadoop-cluster
sudo ./start-container.sh
```

#### 5. Ejecutar

```
wget https://raw.githubusercontent.com/Denyl97/hadoop-testing/master/start-data.sh -O start-data.sh
chmod u+x start-data.sh
./start-data.sh
```

Luego, para ejecutar cada query, se debe colocar en la linea de comandos lo siguiente:
pig -x mapreduce query1.pig

donde query1.pig es el nombre del archivo que contiene el query respectivo
La lista de todos los queries con sus resultados y el nombre de cada columna de vgsales.csv 
se encuentran en el archivo queries.txt

En cada query, cada store esta comentado para mostrar el resultado del query por pantalla.

El dataset utilizado esta disponible online en kaggle.com/gregorut/videogamesales, fue descargado el 28 de febrero del 2020,
fue procesado para quitar las comas "," de las entradas, para poder usarlo en pig y realizar los queries.
El dataset procesado fue subido a este repositorio como vgsales.csv
