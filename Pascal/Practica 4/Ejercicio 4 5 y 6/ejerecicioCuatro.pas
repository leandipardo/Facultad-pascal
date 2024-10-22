// 4. Se dispone de un vector con 100 números enteros. Implementar los siguientes módulos:
// a) posicion: dado un número X y el vector de números, retorna la posición del número X en dicho vector,
// o el valor -1 en caso de no encontrarse.
// b) intercambio: recibe dos valores x e y (entre 1 y 100) y el vector de números, y retorna el mismo vector
// donde se intercambiaron los valores de las posiciones x e y.
// c) sumaVector: retorna la suma de todos los elementos del vector.
// d) promedio: devuelve el valor promedio de los elementos del vector.
// e) elementoMaximo: retorna la posición del mayor elemento del vector
// f) elementoMinimo: retorna la posicion del menor elemento del vector

program EjerciciosCienVectores;
type
    vec = array[1..100] of integer;

function posicion(arr: vec; x: integer): integer;
var
    i: integer;
begin
    posicion := -1;  // Inicializa con -1
    for i := 1 to 100 do
    begin
        if arr[i] = x then
        begin
            posicion := i;
            exit;  // Sale del bucle si encuentra la posición
        end;
    end;
end;

procedure intercambio(var arr: vec; x, y: integer);
var
    temp: integer;
begin
    temp := arr[x];
    arr[x] := arr[y];
    arr[y] := temp;
end;

function sumaVector(arr: vec): integer;
var
    suma, i: integer;
begin
    suma := 0;
    for i := 1 to 100 do
    begin
        suma := suma + arr[i];
    end;
    sumaVector := suma;
end;

function promedio(arr: vec): real;
var
    suma: integer;
begin
    suma := sumaVector(arr);  // Reutiliza la función sumaVector
    promedio := suma / 100.0;  // División real
end;

// function elementoMaximo(arr: vec;var maximo: integer): integer;
// var
//     i, pos: integer;
// begin
//     maximo := arr[1];
//     pos := 1;
//     for i := 2 to 100 do
//     begin
//         if arr[i] > maximo then
//         begin
//             maximo := arr[i];
//             pos := i;
//         end;
//     end;
//     elementoMaximo := pos;
// end;

procedure elementoMinMax(arr: vec;var minimo,maximo:integer);
var
    i, posMin,posMax: integer;
begin
    posMin := 1;
    posMax:=1;
    for i := 2 to 100 do
    begin
        if arr[i] < minimo then
        begin
            minimo := arr[i];
            posMin := i;
        end
        else if arr[i] > maximo then
        begin
            maximo := arr[i];
            posMax :=i;
        end;
    end;
    minimo := posMin;
    maximo := posMax;
end;
procedure leerEnteros(var arr: vec);
var
num,i:integer;
begin
    for i := 1 to 100 do
    begin
        writeln('ingrese un numero: ');
        readln(num);
        if (num = 0) then break;
        arr[i]:=num;
    end;
end;

var
    arr: vec;
    min,max,i, x, y: integer;
begin
    max:=0;
    min:=0;
    // Inicializa el vector con valores para prueba
    for i := 1 to 100 do
        arr[i] := i;

    writeln('Ingrese un número para encontrar su posición:');
    readln(x);
    writeln('La posición del número ', x, ' es: ', posicion(arr, x));

    writeln('Ingrese las posiciones x e y para intercambiar:');
    readln(x, y);
    intercambio(arr, x, y);
    writeln('Intercambio realizado.');
    leerEnteros(arr);
    elementoMinMax(arr,min,max);
    writeln('La suma de todos los elementos del vector es: ', sumaVector(arr));
    writeln('El promedio de todos los elementos del vector es: ', promedio(arr):0:2);
    writeln('La posición del elemento máximo del vector es: ', max);
    writeln('La posición del elemento mínimo del vector es: ', min);
    writeln('Se intercambio el elemento de la posicion ',max,' por el elemento de la posicion ',min);
end.
// 5. Utilizando los módulos implementados en el ejercicio 4, realizar un programa que lea números enteros
// desde teclado (a lo sumo 100) y los almacene en un vector. La carga finaliza al leer el número 0. Al finalizar
// la carga, se debe intercambiar la posición del mayor elemento por la del menor elemento, e informe la
// operación realizada de la siguiente manera: “El elemento máximo ... que se encontraba en la posición ...
// fue intercambiado con el elemento mínimo ... que se encontraba en la posición ...”.

// 6. Dado que en la solución anterior se recorre dos veces el vector (una para calcular el elemento máximo y
// otra para el mínimo), implementar un único módulo que recorra una única vez el vector y devuelva ambas
// posiciones.