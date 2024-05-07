// Realice un programa que lea 10 números e informe cuál fue el mayor número leído. Por ejemplo, si se lee la secuencia: 
//                 3 5 6 2 3 10 98 8 -12 9
//             Deberá informar: "El mayor número leído fue el 98".

//     a.  Modifique el programa anterior para que, además de iunformar el mayor número leído, 
//     se informe el número de orden, dentro de la secuencia, en el que fue leído. Por ejemplo, si se lee la misma secuencia:
//                 3 5 6 2 3 10 98 8 -12 9
//             deberá informar: "El mayor número leído fue el 98, en la posicion 7."

program mayorNumero;
var
    num,i,numMax,pos:integer;
begin
    writeln('Ingrese 10 numeros.');
    i:=0;
    read(numMax);
    for i := 1 to 9 do
    begin
        read(num);
        if num > numMax then 
        begin 
            numMax:=num;
            pos:=i + 1;
        end;
    end;
    write('El numero mas grande ingresado es: ',numMax,' en la posicion:',pos,'.');
    read(num);
end.
