// 1 - Realizar un programa que lea 10 números enteros e informe la suma total de los números leidos.
//     a.  Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5.
program sumaNumeros;
var
    num,suma,i:integer;
    begin
        suma:=0;
        writeln('Ingrese 10 numeros.');
        for i:= 1 to 10 do
        begin
            read(num);
            suma:=suma+num;
        end;
        writeln('La suma de los numeros ingresados es:   ',suma,'.');
        read(num);
    end.