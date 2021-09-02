# Lección 12

Jueves 2 de setiembre, 2021 <br/>
Tecnológico de Costa Rica <br/>
EL5857 Aprendizaje Automático

### Margen máximo, margen funcional y margen geométrico.

Los conceptos de margen funcional, margen geométrico y margen máximo
subyacen a toda la teoría y práctica de las máquinas de sporte
vectorial.

Aquí se ponen varios ejemplos, que usted tendrá que modificar según se
establece a continuación.


1. Revise el ejemplo en GNU/Octave margemax.m, que también se usó en la clase
   teórica.
2. Modifique dicho ejemplo para imprimir los márgenes funcional y
   márgenes geométrico.  En el código se normaliza de una vez el vector w, pero
   puede usar como vector original para el cálculo del margen funcional a
   las coordenadas que el usuario ingresa [x,y].
3. El ejemplo MaxMargin.ipynb ya utiliza scikit-learn y los SVM para
   hacer el trabajo pesado.  Lo que se quiere aquí ahora es que usted
   modifique el código de modo que pueda especificar un mapeo 
   ![equation](https://render.githubusercontent.com/render/math?math=\phi) para
   modificar el espacio de entrada en un espacio de caracterísiticas.  En el 
   ejemplo bidimensional construya un mapeo cuadrático: 
   
   ![equation](https://render.githubusercontent.com/render/math?math=\phi([x,y]^T)=[x,y,x^2,y^2,xy]^T)
