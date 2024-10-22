//Realizar un programa que lea un carácter, que puede ser "+" (suma) o "-" (resta); si se ingresa otro carácter,debe
//informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse una secuencia de números enteros
//Que finaliza con 0. El programa deberá aplicar la operación leída con la secuencia de números, e imprimir el resultado final.
//por ejemplo:
//Si se lee el carpacter "-" y la secuencia 4 3 5 -6 0 , deberá imprimir: 2(4-3-5-(-6))
//Si se lee el carácter "+"y la secuiencia -10 5 6 -1 0, deberá imprimir 0(-10+5+6+(-1))

program sumaOresta;
var
    sumar:char;
    numAct,Total:integer;
begin
    Total:=0;
    writeln('ingrese un caracter "+" o "-" para continuar:');
    readln(sumar);
    if sumar = '+' then
    begin
        repeat
            writeln('Ingrese un numero a sumar: ');
            readln(numAct);
            Total:=Total+numAct;
        until numAct = 0
    end;
    if sumar = '-' then
    begin
        repeat
            writeln('Ingrese un numero a restar: ');
            readln(numAct);
            Total:=Total-numAct;
        until numAct = 0; 
    end
    else
    begin
        writeln('Error: el caracter ingresado no es valido.')
    end;
    writeln('El total de la cadena de numeros ingresados es: ',total);
    readln();
end.