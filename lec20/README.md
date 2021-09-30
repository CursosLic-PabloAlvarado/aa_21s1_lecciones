# Lección 20

Jueves 30 de setiembre, 2021 <br/>
Tecnológico de Costa Rica <br/>
EL5857 Aprendizaje Automático

En la práctica de hoy vamos a jugar con un autoencoder.  Esto es
prácticamente dos redes neuronales en una configuración de reloj de
arena, que intentan aprender cómo decodificar y re-codificar
información de una forma óptica.  En el caso actual vamos a intentar
construir un codificador de imágenes.

Vamos a usar en esta práctica TensorFlow, que es el marco de trabajo
de Google, con Keras, que es una capa encima del TensorFlow que
simplifica un poco la construcción de los modelos.

Por otro lado vamos a usar TensorBoard, que es una herramienta
sencilla para protocolar experimentos.  Al final de cada corrida que
usted haga, aparecerán más y más gráficas, cada una correspondiente a
un experimento particular.

El cuaderno empotra la salida del tensorboard, pero usted puede
iniciar en su navegador un visualizador desde la consola con

> tensorboard --logdir logs/

Allí le indicará qué enlace abrir en su navegador.


1. Revise con detenimiento todo el cuaderno para comprender en general qué hace.
2. Simplifique el modelo de autoencoder para observar el nuevo
   comportamiento en las curvas de entrenamiento de un modelo "sesgado".
3. Modifique ahora el modelo en la dirección contraria, para darle
   alta varianza.  Compare las curvas.
4. Ahora procure encontrar un buen compromiso empleando las curvas
   para su toma de decisiones.
