### Universidad Simón Bolívar
### Departamento de Computo Científico y Estadística
### Calculo Numérico – CO3211
### Prof. Saúl Buitrago

# Informe Proyecto 2 - Península de Paraguaná

## Autor
* Luis Alfonso Pino (15-11138). 

## Resumen
El proyecto se enfoca en desarrollar un programa que halle una aproximación de la longitud de la lı́nea de costa de la Penı́nsula de Paraguaná usando los conceptos de spline cubico, metodo anidado de Horner y Polinomios vistos en las clases previas.

## Implementación

* La funcion de **LongitudArco** esta diseñada para calcular la longitud de arco de una función polinomica de grado 3, recibiendo como argumentos los coeficientes de esta función. El desarrollo de esta se hace en base a la formula de longitud de arco matemtica que dice:
* La funcion de **Horner** 
* La funcion de **LongitudLineaCosta** 
* La funcion de **SplineCubico** 

## Analisis de Resultados

En base a las pruebas realizadas utilizando el programa del proyecto, obtenemos la siguiente tabla de resultados

## Tiempo Promedio 

|                       |  1000  |  5000   | 10000    | 20000    | 40000   | 50000   | 80000   |
|-----------------------|--------|---------|----------|----------|---------|---------|---------|
| Insertion            	|157.53|4311.45|17108.02|66467.05|100200.99|210792.12|597211.85|
| Merge Sort           	|18.41 |107.49 |236.51  | 480.46 |1082.52|1371.73|2302.83|
| Heap Sort            	| 27.40|158.52 |343.57  |763.46  |1634.32|2038.68|3534.64|       
| Quicksort            	|7.53  |52.57  |129.68  |327.81  |956.71 |1403.79|3201.05|       
| Randomized Quicksort 	|12.86 |84.53  |195.46  |476.03  |1289.75|1806.93|3898.31|       
| Counting sort        	|42.56 | 48.90 |  51.74 | 59.10  |69.25  |91.74|123.41   |        
| Radix sort           	|26.66 |28.28  |33.36   |43.69   |67.10  |77.84 |118.41 |       
| Bucket sort          	|8.20 |188.07 |720.32  |2891.20 |11783.50|18860.94|48419.92|



### InsertionSort
![Grafico HeapSort ](./graficos/Insertionsort.png)
Constante utilizada: 1

### MergeSort
![Grafico HeapSort ](./graficos/Mergesort.png)
Constante utilizada: 0.01

### HeapSort
![Grafico HeapSort ](./graficos/Heapsort.png)
Constante utilizada: 0.01

### QuickSort
![Grafico HeapSort ](./graficos/Quicksort.png)
Constante utilizada: 0.01

### Randomized QuickSort
![Grafico HeapSort ](./graficos/Randomized_Quicksort.png)
Constante utilizada: 0.01

### CountingSort
![Grafico HeapSort ](./graficos/Countingsort.png)
Constante utilizada: 0.01

### RadixSort
![Grafico HeapSort ](./graficos/Radixsort.png)
Constante utilizada: 0.01

### BucketSort
![Grafico HeapSort ](./graficos/Bucketsort.png)
Constante utilizada: 1

Como fue esperado los resultados coincidieron con las graficas teoricas que vienen resaltadas en color **azul** contrario a nuestras graficas practicas que están resaltadas en color **rojo**.

## Conclusión 

En este proyecto de algoritmos de ordenamientos se han implementado todos los contenidos que se dictaron en el curso de laboratorio de algoritmo 2 y en el curso teorico de algoritmo 2 por lo que va de trimestre. Los resultados obtenidos en el proyecto han sido cumplidos en su totalidad gracias a los objetivos planteados en dicho proyecto. Se noto que a la hora de realizar el proyecto se introdujeron funciones auxiliares que optimizaron el funcionamiento, facilitando el planteamiento y la ejecucion del programa. Una de las dificultades a la hora de realizar el programa es lograr una manera eficiente de hacer todas las pruebas, por otra parte, la otra dificultad que se presento fue investigar la implementación de otros programas para el correcto funcionamiento de nuestro código.

A la hora de realizar el proyecto se puede notar como fluyen los conocimientos obtenidos, cambiando la manera de pensar y atacar los problemas que se nos presentaron para realizar el proyecto, así los objetivos propuestos por dicho proyecto se alcanzaron en todos los campos requeridos para ejecutar las pruebas y estudiar su comportamiento.

## Bibliografía 

Blai, Bonet (15 de julio de 2018) CI2612: Algoritmos y Estructuras de Datos II (Pregrado). Caracas. Recuperado de https://bonetblai.github.io/courses/ci2612/

Alejandro Suarez Lamadrid y Antonio Suarez Jimenez (2014-2018) Python 3 para impacientes: Calculo estadisticos. Andalucia - España. Recuperado de https://python-para-impacientes.blogspot.com/2016/10/calculo-estadistico.html

Desmos, Inc (2018) desmos. Recuperado de https://www.desmos.com/
