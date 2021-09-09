# Lección 10

Jueves 26 de agosto, 2021 <br/>
Tecnológico de Costa Rica <br/>
EL5857 Aprendizaje Automático

En esta práctica usaremos varios conceptos "estándar" en la comunidad.

1. Investigue qué es el set de datos estándar "Iris"
2. Estudie el ejemplo mlp_sklearn.ipynb
3. Cree un segundo clasificador del mismo tipo para experimentar con
   los parámetros.  Sobreponga las gráficas de pérdidad en función de
   las iteraciones para el clasificador brindado y el parametrizado
   por usted.  ¿Cómo puede lograr que aprenda más rápido?
4. Investigue en internet en qué se diferencia el método de momentum
   clásico que vimos en clase, con el método de momentum de Nesterov.
   Verifique su uso con lo realizado en el punto 3.
5. Ejecute el ejemplo plot_mlp_training_curves.ipynb ¿A qué
   conclusiones puede llegar?
   
Los siguientes pasos utilizarán TensorFlow como base con Keras como
capa superior.  El TensorFlow es demandante en recursos y puede ser
complicado de echar a andar.  Si no lo logar, puede utilizar Google
Colab para tener hardware potente a disposición y para evitar los
problemas de instalación.

6. Revise el cuaderno keras_iris.ipynb
7. Trate de modificar la red para que se comporte como un regresor logístico
8. Agrege capas, y pruebe distintos tipos de funciones de activación,
   número de unidades por capa, etc.
9. Muestre las curvas de entrenamiento no solo para el set de
   validación, sino para el set de entrenamiento.

