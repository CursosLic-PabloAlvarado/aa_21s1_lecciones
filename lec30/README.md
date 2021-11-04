# Lección 29

Jueves 4 de noviembre, 2021 <br/>
Tecnológico de Costa Rica <br/>
EL5857 Aprendizaje Automático

En esta lección exploraremos las redes recurrentes LSTM, usando TensorFlow.

1. El primer ejemplo es LSTM_MNIST.  En este ejemplo consideraremos
   que cada dígito es una sucesión de 28 vectores, cada uno de
   tamaño 28.  El ejemplo resuelve un problema many-to-one, donde al
   final se quiere reconocer que clase pertenece una sucesión de 28
   vectores.  Estudie el código entregado.

   Las tareas a realizar son:
   
   1.1. Modifique el código para también recolectar la pérdida y exactitud
        con el set de prueba, puesto que el código brindado solo muestra
        esas métricas para el set de entrenamiento.
   1.2. Calcule las matrices de confusión finales.

2. El cuaderno LSTM-Airline_passengers contiene un ejemplo de
   predicción.  Un modelo entrenado con el número de pasajeros a lo
   largo del tiempo, se usa para predecir el futuro de ese número de
   pasajeros.  Estudie el código para comprender cómo se manejan las
   sucesiones de datos en este caso.
