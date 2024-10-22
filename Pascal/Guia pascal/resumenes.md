# Resumen: Subrangos

## Descripción

Los subrangos son tipos de datos definidos por el usuario que restringen los valores que puede tomar una variable a un rango específico, permitiendo una validación más efectiva.

- **Definición:**
  - Tipos de datos que limitan los valores de una variable a un rango específico (ej. `1..100`).
- **Tipos:**
  - Pueden ser numéricos (ej. `1..100`), de caracteres (ej. `'A'..'Z'`), y de enumeraciones (ej. `Rojo..Azul`).
- **Validación:**
  - Ayudan a asegurar que los valores asignados estén dentro de los límites definidos, utilizando la operación `in`.

# Resumen: Tipos de Datos Definidos por el Usuario

## Descripción

Los tipos de datos definidos por el usuario permiten al programador crear nuevos tipos basados en tipos existentes, facilitando la organización y gestión de datos complejos en Pascal.

- **Tipos Enumerados:**
  - Conjuntos de valores simbólicos, definidos por el usuario (ej. `DiaDeLaSemana`).
- **Registros:**
  - Colección de campos de diferentes tipos, útil para representar entidades (ej. `Persona`).
- **Arreglos:**
  - Colecciones de elementos del mismo tipo, accesibles por índice (ej. `array[1..5] of Integer`).
- **Conjuntos:**
  - Almacenan valores de un tipo ordinal en un solo objeto, donde cada valor puede estar presente o no.

# Resumen: Tipos de Datos Estructurados

## Descripción

Los tipos de datos estructurados permiten agrupar múltiples valores bajo un mismo nombre, facilitando la organización y el manejo de datos complejos en Pascal.

- **Registros:**
  - Colección de campos de diferentes tipos, útil para representar entidades (ej. `Persona`).
- **Arreglos:**
  - Colecciones de elementos del mismo tipo, accesibles por índice (ej. `array[1..5] of Integer`).
- **Combinación:**
  - Puedes usar registros que contengan arreglos para crear estructuras más complejas (ej. un registro que incluya un arreglo de notas).

# Resumen: Estructura de Datos Registro

## Descripción

Los registros permiten agrupar diferentes tipos de datos bajo un mismo nombre, representando entidades con múltiples características.

- **Definición:**
  - Se define con `record`, conteniendo varios campos de distintos tipos.
- **Acceso a Campos:**
  - Se accede a los campos usando la sintaxis `nombreRegistro.campo`.
- **Uso en Funciones/Procedimientos:**
  - Los registros pueden ser pasados como parámetros a funciones y procedimientos, facilitando la manipulación de datos complejos.

## Ejemplo de Sintaxis

```pascal
type
  Persona = record
    Nombre: string;
    Edad: Integer;
    Altura: Real;
  end;
```

## Resumen: Registro de Registro

## Descripción

Un registro de registro permite anidar registros dentro de otros registros, facilitando la representación de estructuras de datos complejas.

- **Definición:**
  - Se define un registro que contiene otro registro como uno de sus campos.
- **Acceso a Campos:**
  - Se accede a los campos internos usando la sintaxis `nombreRegistro.campoInterno.campo`.
- **Uso en Funciones/Procedimientos:**
  - Los registros de registro pueden ser pasados como parámetros a funciones y procedimientos.

## Ejemplo de Sintaxis

```pascal
type
  Direccion = record
    Calle: string;
    Ciudad: string;
  end;

  Persona = record
    Nombre: string;
    Edad: Integer;
    Direccion: Direccion; // Campo que es otro registro
  end;
```

# Resumen: Corte de Control con Registro

## Descripción

El corte de control con registro permite utilizar registros en estructuras de control, facilitando la toma de decisiones basadas en un campo específico del registro.

- **Uso en `case`:**
  - Permite simplificar la lógica al manejar múltiples casos de manera organizada según el valor de un campo del registro.

## Ejemplo de Sintaxis

```pascal
type
  Figura = (Circulo, Cuadrado, Triangulo);
  Geometria = record
    Tipo: Figura;
    Radio: Real;
    Lado: Real;
    Base: Real;
    Altura: Real;
  end;
```
