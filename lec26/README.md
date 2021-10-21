# Lección 26

Jueves 21 de octubre, 2021 <br/>
Tecnológico de Costa Rica <br/>
EL5857 Aprendizaje Automático

Hoy vamos a experimentar con el método de iteración de valor ajustada.

1. En el cuaderno random_cartpole.ipynb hay un ejemplo muy sencillo de
   uso del entorno 'cartpole' de gym, pero donde las acciones son
   tomadas al azar.
   Revise y comprenda cómo funciona el principio fundamental de simulación 
   y despliegue de este péndulo invertido.
2. En el cuaderno fitted_value_iteration.ipynb hay una implementación
   del algoritmo casi completa.  Es su tarea hacerla funcionar mejor:
   - revise si la recompensa usada tiene o no sentido
   - revise si el modelo de regresión es suficiente o si hará falta introducir 
     no linealidad por medio de un mapeo $\phi$.
   - revise si el algoritmo está haciendo los pasos correctos
3. Si llegó hasta aquí, puede intentar aplicar el algoritmo a otro
   entorno, como el péndulo (ver ejemplo de random_pendulum.ipynb).
