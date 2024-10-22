// Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son
// los dos números mínimos leídos.
//     a. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer el número 0, el cual
//     debe procesarse.

//     b. Modifique el ejrcicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer el número 0, el cual no
//     debe procesarse.
program MilNros;
var
    num, secondmin, min: integer;
begin
    min := MaxInt;
    secondmin := MaxInt;

    repeat
        writeln('Ingresa un numero:');
        readln(num);
        if (num <> 0) then
        begin
            if (num <= min) then
            begin
                secondmin := min;
                min := num;
            end
            else if (num < secondmin) then
                secondmin := num;
        end;
    until num = 0;

    writeln('El numero minimo es: ', min);
    writeln('El siguiente numero minimo es: ', secondmin);
    readln();
end.