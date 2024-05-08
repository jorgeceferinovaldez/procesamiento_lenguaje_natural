<img src="https://github.com/hernancontigiani/ceia_memorias_especializacion/raw/master/Figures/logoFIUBA.jpg" width="500" align="center">

<br>

# Especialización en Inteligencia Artificial

# Trabajo Práctico Integrador

# Procesamiento de Lenguaje Natural
---

## Alumno:
   - Jorge Valdez

## Contenido

### Desafío 1
[**1**. Vectorizar documentos.](desafio_1/desafio_1_Punto_1.ipynb) Tomar 5 documentos al azar y medir similaridad con el resto de los documentos.
Estudiar los 5 documentos más similares de cada uno analizar si tiene sentido
la similaridad según el contenido del texto y la etiqueta de clasificación.

[**2**. Entrenamiento de modelos Niave Bayes.](desafio_1/desafio_1_Punto_2.ipynb) Entrenar modelos de clasificación Naïve Bayes para maximizar el desempeño de clasificación
(f1-score macro) en el conjunto de datos de test. Considerar cambiar parámteros
de instanciación del vectorizador y los modelos y probar modelos de Naïve Bayes Multinomial
y ComplementNB.

[**3**. Transponer la matriz documento-término.](desafio_1/desafio_1_Punto_3.ipynb) .  De esa manera se obtiene una matriz
término-documento que puede ser interpretada como una colección de vectorización de palabras.
Estudiar ahora similaridad entre palabras tomando 5 palabras y estudiando sus 5 más similares.

### [Desafío 2](desafio_2/desafio_2.ipynb) 
#### Objetivo
El objetivo es utilizar documentos / corpus para crear embeddings de palabras basado en ese contexto. Se utilizará canciones de bandas para generar los embeddings, es decir, que los vectores tendrán la forma en función de como esa banda haya utilizado las palabras en sus canciones.

- Crear sus propios vectores con Gensim basado en lo visto en clase con otro dataset.
- Probar términos de interés y explicar similitudes en el espacio de embeddings (sacar conclusiones entre palabras similitudes y diferencias).
- Graficarlos.
- Obtener conclusiones.
