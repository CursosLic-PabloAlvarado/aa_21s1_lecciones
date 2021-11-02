# Lección 29

Martes 2 de noviembre, 2021 <br/>
Tecnológico de Costa Rica <br/>
EL5857 Aprendizaje Automático

En esta lección exploraremos el uso de modelos ocultos de Markov (HMM).

Lo primero que necesitamos es la biblioteca para uso de los HMM.  Esta
se llama hmmlearn y se instala con

     pip install hmmlearn

o

     conda install -c conda-forge hmmlearn
     
1. Revise el cuaderno HMM-Discreto.ipynb.  Allí se presenta un ejemplo 
   sencillo para revisar el concepto de HMM visto en clase, donde los
   símbolos observables provienen de una distribución multinomial (discreta).
   
   Dicho ejemplo está detallado en:
   https://en.wikipedia.org/wiki/Hidden_Markov_model#Weather_guessing_game
   
2. En el ejemplo HMM-Gauss.ipynb se presenta un ejemplo gaussiano.  Esto
   quiere decir que los símbolos son "continuos" y se generan a partir
   de distribuciones gaussianas.
   
   Primero, agregue un tercer modelo con cuatro estados.

3. Solucione los tres problemas de HMM.  Observe que ya anteriormente
   se produjeron las sucesiones de 500 estados y las correspondientes
   observaciones.
