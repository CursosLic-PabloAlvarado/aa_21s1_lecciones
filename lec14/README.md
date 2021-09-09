# Lección 14

Jueves 9 de setiembre, 2021 <br/>
Tecnológico de Costa Rica <br/>
EL5857 Aprendizaje Automático

### SVM 

En esta práctica repasaremos todo el concepto de los SVM, y los
aplicaremos al reconocimiento de caras.

Hay un  archivo de referencia para repasar, y otro en el que
tendremos que trabajar.

1. Revise el archivo plot_iris_svc.ipynb, equivalente a lo que se
   comentó en el vídeo de la clase teórica.  En la clase se discute cómo
   forzar a un sobre-ajuste...
   
2. El archivo SVC.ipynb tiene un viaje por todos los conceptos vistos
   hasta el momento.
   
   2.1 Después de la celda [11], investigue qué corresponde en la
       implementación de ScikitLearn a los coeficientes alpha y muestre
       los valores correspondientes a los vectores de soporte. ¿Se cumple la
       condición 
       ![equation](https://render.githubusercontent.com/render/math?math=\sum_{i=1}^m\alpha_iy^{(i)}=0)?
       
   2.2 ¿Cómo podríamos calcular las "variables de holgura" (slack variables)?

   2.3 En el reconocimiento de caras, anote las métricas de precisión
       y exhaustividad (recall) alcanzadas, e intente encontrar un
       mejor desempeño modificando los parámetros.
