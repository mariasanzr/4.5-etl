# NFL 🏈

![NFL](/pictures/nfl.jpeg)

Para este proyecto, he hecho una extracción de datos relacionados con la NFL (National Football League). 

EXTRACCIÓN 🏗️

- 'States': con datos como los nombres de los estados, su capital y su superficie en kilómetros cuadrados. 

- 'Universities': cuenta con una lista de 230 universidades americanas con datos como el estado en el que se encuentra, su descripción, precio...

- 'Teams_players': esta tabla cuenta con los datos de los jugadores por equipo en el año 2018, así como su peso, altura, posición, entre otras cosas...

TRANSFORMACIÓN ↺

- En esta sección del proyecto, he comenzado  por utilizar el método 'scraping' y descarga de CSVs para obtener los datos.

- He procedido a hacer una pequeña limpieza de los datoss.

- He Creado columnas en cada tabla cuyos datos se identificaran con los IDs de aquellas con las que estuvieran relacionadas.

CARGA 🪨

- He creado  una base de datos en MySQL Workbench y cargué las tablas.

- He definido las 'foreign keys' y las 'primary keys' así como las relaciones entre las tablas.

- Por último, he escrito algunas 'queries' para conseguir filtrar los datos. Estas son algunas de ellas: 


- Aquí se muestran el top 3 de universidades que han aportado más jugadores a la NFL:

![query](/pictures/query1.png)

- Aquí se muestran el top 3 de equipos con más jugadores senior (10-15 años):

![query](/pictures/query2.png)

- Auí se muestra el top 5 de peso medio de los jugadores por equipos:

![query](/pictures/query3.png)

- Aquí se muestra la altura media de los jugadores dependiendo de su posición en el equipo:

![query](/pictures/query4.png)

- Aquí se muestra el top 5 de estados con más universidades (según las seleccionadas):

![query](/pictures/query5.png)