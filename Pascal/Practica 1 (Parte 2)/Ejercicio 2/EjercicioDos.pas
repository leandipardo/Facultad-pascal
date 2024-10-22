// Realice un programa que lea 10 números e informe cuál fue el mayor número leído. Por ejemplo, si se lee la secuencia: 
//                 3 5 6 2 3 10 98 8 -12 9
//             Deberá informar: "El mayor número leído fue el 98".

//     a.  Modifique el programa anterior para que, además de informar el mayor número leído, 
//     se informe el número de orden, dentro de la secuencia, en el que fue leído. Por ejemplo, si se lee la misma secuencia:
//                 3 5 6 2 3 10 98 8 -12 9
//             deberá informar: "El mayor número leído fue el 98, en la posicion 7."

program mayorNumero;
var
i,pos,nAct,nMax:integer;
begin
    nMax:=-32767;
    for i:=1 to 10 do
    begin
        writeln('Ingrese un numero: ');
        readln(nAct);
        if nAct > nMax then 
        begin
            pos:=i;
            nMax:=nAct;
        end;
    end;
    writeln('El mayor numero ingresado es: ', nMax, '. En la posicion: ', pos);
    readln();
end.