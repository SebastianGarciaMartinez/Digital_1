## Contador de 1s


El diagrama de flujo describe el funcionamiento de un sistema digital encargado de contar la cantidad de bits en 1 presentes en una trama binaria y posteriormente determinar su paridad. El proceso comienza con la lectura de la trama y la inicialización de los contadores. Posteriormente, el sistema analiza cada bit de la trama mediante desplazamientos hacia la derecha hasta procesar todos los bits. Finalmente, se verifica si la cantidad de unos es par o impar para aceptar o rechazar la trama.

### Inicialización

El sistema inicia en el estado Inicio, donde se realiza la lectura de la trama de entrada. En este punto se inicializan dos registros:

Contador_1s = 0, que almacenará la cantidad de bits con valor 1 encontrados.

Contador_bits = n, que representa la cantidad total de bits que se deben analizar en la trama.

### Recorrido de la trama

Una vez inicializados los registros, el sistema entra en un ciclo donde se procesan los bits de la trama uno por uno. Primero se verifica la condición:

¿Contador_bits = 0?

Si la condición es verdadera, significa que todos los bits de la trama han sido analizados y el sistema pasa a la etapa de verificación de paridad. Si es falsa, aún quedan bits por procesar y se continúa con la evaluación del bit menos significativo.

### Verificación del bit

El sistema revisa el bit menos significativo de la trama (Trama(0)). Si Trama(0) = 1, se incrementa el contador de unos:

Si Trama(0) = 0, no se modifica el contador.

### Desplazamiento de la trama

Después de evaluar el bit, la trama se desplaza una posición hacia la derecha. De esta forma el siguiente bit pasa a ser el menos significativo. Simultáneamente se reduce el contador de bits. Esto permite llevar control de cuántos bits quedan por procesar.

Luego el sistema regresa al inicio del ciclo hasta analizar toda la trama.

### Verificación de paridad

Una vez procesados todos los bits, el sistema evalúa la condición de paridad.Si el resultado es verdadero, la cantidad de unos es par, por lo que la trama se acepta. Si es falso, la cantidad de unos es impar, por lo que la trama se rechaza.

Finalmente se imprime el número de unos encontrados y el sistema termina su ejecución.

### Diagrama de flujo

<img width="1203" height="2520" alt="Paridad" src="https://github.com/user-attachments/assets/eb3aca42-b55d-41ab-9ae1-c4c1a06a576d" />


### Datapath

<img width="1326" height="977" alt="Paridad (1)" src="https://github.com/user-attachments/assets/6ee30405-0bd6-4be7-8d9b-60264531d6fa" />


### Máquina de estados

<img width="1294" height="843" alt="Paridad (3)" src="https://github.com/user-attachments/assets/b1ac9a28-34df-499c-b8f4-66d8a4babbee" />
