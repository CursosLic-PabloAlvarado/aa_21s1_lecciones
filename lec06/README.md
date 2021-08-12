# Lección 06

Tecnológico de Costa Rica <br/>
EL5857 Aprendizaje Automático

En este directorio están los archivos GNU/Octave utilizados en la clase teórica para ejemplificar las estrategias de optimización:

- stoch_grad_descent.m: descenso estocástico de gradiente
- stoch_momentum.m    : descenso estocástico con momentum
- stoch_rmsprop.m     : descenso estocástico con RMSProp
- stoch_adam.m        : descenso estocástico con ADAM

Se presentan solo como ejemplo del proceso de optimización.  También
están en el tecDigital.

Se brinda el siguiente ejemplo:
- logreg.m: regresión logística en un problema simple con separación lineal, usando descenso de gradiente por lotes.

Sobre este ejemplo, hay que realizar las siguienes tareas:

1. Agregar un plot del "error" o "pérdida" en función de las iteraciones.  Haga commit y push al cambio realizado.
2. Procure mejorar la convergencia del método.  Así como está no alcanza al mínimo y queda mal ajustada la recta ¿qué cambiaría para que se ajuste mejor?  Haga commit y push al cambio realizado.
3. Modifique ahora el script para que utilice momento en la optimización.  Haga commit y push al cambio realizado.
