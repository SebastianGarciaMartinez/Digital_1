# Multiplicador

En esta sección se presenta el diseño del multiplicador utilizado en la calculadora. 
El sistema está compuesto por un diagrama de flujo, el datapath y la máquina de estados que controla su funcionamiento.

El sistema implementa un multiplicador binario secuencial con manejo de signo, basado en el algoritmo de corrimiento y suma. Este método permite realizar la multiplicación de dos números binarios utilizando operaciones simples como sumas, desplazamientos y evaluaciones lógicas, ejecutadas de manera iterativa.

El proceso inicia con una etapa de inicialización donde se cargan los operandos de entrada y se prepara un acumulador parcial en cero. Adicionalmente, se determina el signo del resultado final mediante una operación lógica entre los bits más significativos de los operandos, permitiendo trabajar internamente con valores positivos.

Si alguno de los operandos es negativo, se convierte a su equivalente en complemento a dos, garantizando que la operación principal se realice con valores positivos. Esto simplifica el diseño y evita manejar directamente operaciones con signo durante el cálculo.

Una vez preparados los datos, el sistema entra en un ciclo iterativo controlado por un contador. En cada iteración, se evalúa el bit menos significativo del multiplicador. Si este bit es igual a uno, se suma el multiplicando al acumulador parcial. Independientemente del resultado, se realiza un corrimiento del multiplicando hacia la izquierda y del multiplicador hacia la derecha, ajustando así los pesos binarios de cada operando. Este proceso se repite hasta que el contador llega a cero.

Al finalizar las iteraciones, si el resultado debe ser negativo (según el signo calculado inicialmente), se convierte el resultado final a complemento a dos. Finalmente, el sistema activa una señal de finalización indicando que el producto ha sido calculado correctamente.

Este enfoque secuencial permite implementar la multiplicación binaria de manera eficiente en hardware, reduciendo la complejidad del circuito al reutilizar los mismos recursos en múltiples ciclos de operación.

## Diagrama de flujo

<img width="814" height="3325" alt="Multiplicador (2)" src="https://github.com/user-attachments/assets/86f99765-a8e6-4289-bd7d-93f5da25a980" />

## Datapath

<img width="1140" height="1808" alt="Multiplicador (3)" src="https://github.com/user-attachments/assets/c29cc741-b883-4661-a037-6b02199ef2ab" />

## Máquina de estados

<img width="2169" height="1079" alt="Multiplicador (1)" src="https://github.com/user-attachments/assets/df69a1d0-f077-47a9-82f4-95907cccfc7e" />

## [Código](Calculadora/Multiplicador.v)
