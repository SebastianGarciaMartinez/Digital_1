## Divisor

En esta sección se presenta el diseño del divisor utilizado en la calculadora. 
El sistema está compuesto por un diagrama de flujo, el datapath y la máquina de estados que controla su funcionamiento.

El divisor binario es un sistema digital diseñado para realizar la operación de división entre dos números en formato binario, obteniendo como resultado un cociente y un residuo. Este proceso se lleva a cabo de manera secuencial.

El funcionamiento del divisor se basa en comparar y ajustar progresivamente el valor del dividendo con respecto al divisor. En cada iteración, el sistema evalúa si es posible realizar una resta sin que el resultado sea negativo. Dependiendo de esta evaluación, se decide si se mantiene la resta o si es necesario revertirla, lo cual determina el valor de cada bit del cociente.

A lo largo del proceso, el sistema realiza desplazamientos y operaciones aritméticas que permiten refinar el resultado en cada ciclo, acercándose gradualmente al cociente correcto. Este enfoque evita realizar la división de una sola vez, lo cual sería más costoso en términos de hardware, y en su lugar utiliza un método eficiente basado en repeticiones controladas.

En esencia, el divisor binario replica el procedimiento de la división tradicional, pero adaptado al contexto digital, donde las decisiones se toman en función de condiciones lógicas y los resultados se construyen de forma incremental. Este tipo de implementación es ampliamente utilizado en sistemas digitales debido a su eficiencia, simplicidad y facilidad de control.


### Diagrama de flujo

<img width="795" height="1906" alt="Divisor (1)" src="https://github.com/user-attachments/assets/875eaeea-55f0-4660-b658-b29027820e37" />

### Datapath

<img width="1136" height="797" alt="Divisor (2)" src="https://github.com/user-attachments/assets/274f69a2-a986-46b2-a30e-af0e51fda880" />

### Máquina de estados

<img width="2367" height="995" alt="Divisor (3)" src="https://github.com/user-attachments/assets/ca101987-07f9-4f17-8c42-9897f80f9489" />
