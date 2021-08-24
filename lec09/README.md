# Lección 09

Martes 24 de agosto, 2021 <br/>
Tecnológico de Costa Rica <br/>
EL5857 Aprendizaje Automático

Para la clase introductoria de redes neuronales, vamos a explorar el funcionamiento sin entrar en todos los detalles técnicos, que veremos a partir del próximo jueves.

Para eso, ingrese al TensorFlow "playground" en este enlace:

https://playground.tensorflow.org/

Observe que al izquierda, en DATA, puede elegir el conjunto de datos
con que se trabajará.  En este ejemplo ilustrativo se usan datos en
dos dimensiones por la facilidad de visualización que tienen.

Observe que hay cuatro sets de datos: circular, XOR, gaussiano y
espiral.  Puede ver cuál es cuál con el _tooltip_ que aparece cuando
deja el puntero sobre el ícono algunos segundos.

Cuando usted de "Play", el descenso de gradiente iniciará y podrá ver la evoluación del aprendizaje.


1. Empecemos fácil: como DATA, elija el tipo gaussiano (los dos conglomerados).
2. Experimente con el número de capas y neuronas para lograr clasificar los puntos bien.  Solo use los datos crudos de entrada, sin aumentar el espacio de características.  El reto es utilizar el menor número de capas y neuronas posible para hacer la clasificación correcta.  Anote sus resultados.
3. Aumente el ruido de los datos (Noise) a 20 e intente de nuevo.
4. Subamos la dificultad:  seleccione el set XOR y repita los pasos.  Juegue con las funciones de activación, pero no use regularización (eso lo veremos en lecciones posteriores).  Anote los resultados.  Este problema en los años 1980s hizo que se retiraran los fondos para investigar redes neuronales, porque se descubrió que (con una capa) el problema no es solucionable, pero no se les había ocurrido que podían ponerse más capas...  A ese periodo oscuro se le conoció como el primer invierno de la inteligencia artificial.
5. ¿Qué ocurre si usa activación lineal con este problema?
6. Pongámonos profesionales: seleccione los datos espirales, con ruido 50.  Diseñe una red neuronal que logre clasificar el problema.  Para los primeros experimentos use una razón de entrenamiento a prueba del 50%
7. Una vez que ya entrenó su red, pruebe los efectos de cambiar la razón de entrenamiento a prueba. ¿Qué ocurre?


