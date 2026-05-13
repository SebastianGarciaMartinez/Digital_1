# Raíz

El módulo de raíz cuadrada implementa un algoritmo binario iterativo basado en operaciones básicas de hardware, evitando el uso de multiplicaciones para facilitar su implementación en FPGA. El sistema calcula la raíz cuadrada entera de un número binario utilizando únicamente corrimientos, sumas, restas y comparaciones.

En cada iteración, el algoritmo desplaza el residuo parcial dos posiciones, incorpora los siguientes bits más significativos del radicando y genera un valor de prueba a partir de la raíz parcial actual. Si el residuo es mayor o igual al valor de prueba, se realiza una resta y se actualiza la raíz parcial agregando un nuevo bit al resultado.

El proceso continúa hasta completar todas las iteraciones necesarias según el tamaño del dato de entrada, obteniendo finalmente la raíz cuadrada entera del número binario ingresado.

## Diagram de Flujo

<img width="1072" height="2532" alt="Paridad (7)" src="https://github.com/user-attachments/assets/0ee7ae97-6f44-46dd-aaab-275064146d44" />


## Datapath

## Máquina de Estados
