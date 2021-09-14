# Lección 15

Martes 14 de setiembre, 2021 <br/>
Tecnológico de Costa Rica <br/>
EL5857 Aprendizaje Automático

En esta práctica revisaremos varios códigos de estimación de densidad probabilísticas

1. plot_kde_1d.ipynb
   Este código es básico, para entender la idea general de estimación 
   de kernels...

2. KNN.ipynb
   Este es un resumen del uso de kernels en la clasificación y el kNN.

3. plot_digits_kde_sampling.ipynb
   Este es un ejemplo más interesante.  Podemos usar la estimación de
   densidad para encontrar cómo se distribuyen los datos, y luego
   generar datos sintéticos a partir de esa distribución.  Vamos a
   poner entonces a un modelo a "imaginar" dígitos nuevos jamás
   escritos.  Revise el código para entender su funcionamiento.

   Tarea: 
   
   Extraiga de los datos solo aquellos pertenecientes a la clase 0 y
   por otro lado aquellos pertenecientes a la clase 1.
          
   Entrene un modelo de densidad de probabilidad para cada clase.
   
   Utilizando los métodos score, diseñe un clasificador que reconozca
   dígitos de la clase 0 o la clase 1.

4. plot_species_kde.ipynb
   Este es un ejemplo corto del uso de KDE en el conteo de especies.


5. plot_knn_classification.ipynb
   Este es otro ejemplo muy corto de clasificación usando k vecinos más cercanos.
   
   Experimente con k=1, y otros valores de k para observar el efecto
   en la clasificación.
   
