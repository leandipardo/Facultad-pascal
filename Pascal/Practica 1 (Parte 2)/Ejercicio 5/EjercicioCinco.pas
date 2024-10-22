// Realizar un programa que lea numeros enteros desde el teclado. la lectura debe finalizar cuando se ingrese el numero 100, el cual debe 
// procesarse. informar en pantalla:
//     #El numero maximo leido
//     #El numero minimo leido
//     #La suma total de los numeros leidos.
Program MaxMinSumaCien;
var
    nmax,nmin,nact,total:integer;
begin
    nmin:= 32767;
    nmax:= -32767;
    total:=0;
    repeat
        writeln('Ingrese un numero: ');
        readln(nact);
        if nact > nmax then nmax:=nact;
        if nact < nmin then nmin:=nact;
        total:=total+nact;
    until nact = 100;
    writeln('El numero maximo leido es: ', nmax);
    writeln('El numero minimo leido es: ', nmin);
    writeln('La suma total de los numeros leidos es: ', total);
    readln();
end.