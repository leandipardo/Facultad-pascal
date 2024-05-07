//Realizar un programa que lea un carácter, que puede ser "+" (suma) o "-" (resta); si se ingresa otro carácter,debe
//informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse una secuencia de números enteros
//Que finaliza con 0. El programa deberá aplicar la operación leída con la secuencia de números, e imprimir el resultado final.
//por ejemplo:
//Si se lee el carpacter "-" y la secuencia 4 3 5 -6 0 , deberá imprimir: 2(4-3-5-(-6))
//Si se lee el carácter "+"y la secuiencia -10 5 6 -1 0, deberá imprimir 0(-10+5+6+(-1))

program SumaOResta;
var
caracter:char;
suma,resta,number:integer;
continuar:boolean;
begin
continuar:=true;
suma:=0;
resta:=0;
    repeat
        writeln('Ingresa un caracter [+] o [-] para sumar o restar los numeros siguientes.');
        readln(caracter);
        if (caracter <> '+') and (caracter <> '-') then
        begin
            writeln('El caracter ingresado no es valido, el programa se cerrara.');
            continuar:= false;
        end
        else
        begin
            repeat
                writeln('ingresa un numero o [0] para salir:');
                readln(number);
                if number = 0 then continuar:=false;
                if caracter = '+' then suma:=suma+number;
                if caracter = '-' then resta:=resta-number;
            until number = 0;
            if(caracter = '+')then writeln('La suma de los numeros ingresados es igual a: ',suma);
            if(caracter = '-')then writeln('La resta de los numeros ingresados es iugal a:',resta);
        end;
    until not continuar;
    readln(number);
end.