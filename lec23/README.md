# Lección 23

Martes 12 de octubre, 2021 <br/>
Tecnológico de Costa Rica <br/>
EL5857 Aprendizaje Automático

En la práctica de hoy vamos a manipular espacios con PCA para
aplicarles reducción de dimensiones.

1. En el cuaderno plot_face_recognitio.ipynb ejecute el cuaderno,
   anote los resultados obtenidos de la clasificación (precisión,
   exhaustividad, etc.)
2. Repita el experimento, pero eliminando el emblanquecimiento en el PCA. 
   Revise los resultados ¿qué puede estar pasando cuando se quita el
   emblanquecimiento?
3. El otro cuaderno que utilizaremos es eigenMNIST.ipynb: una versión para
   explorar el significado de media, y componentes principales.
4. Ejecute el cuaderno y manipule en la celda 10 con los _sliders_ el
   componente que quiere manipular (c) y el factor por el que
   multiplica el eigenvalor.
5. Realice un gráfico del espectro de la matriz de covarianza, es
   decir, la acumulación de las varianzas por componente.
6. Finalmente realice una celda en la que se seleccione una imagen al
   azar, se calculen los componentes principales, y se reconstruya la
   imagen de esos componentes principales.  Sliders deben permitir
   modificar el valor de los componentes principales.  Observe que es
   similar al punto 5., pero el punto de partida es la estimación de
   componentes principales para una imagen dada.
