program ParMasAlto;
var
num,numAlto:integer;
procedure ParAlto;
begin
    numAlto:=0;
    repeat
        writeln('Ingresa un numero');
        readln(num);
        if (num > numAlto) and (num mod 2 = 0) then numAlto:=num;
    until (num < 0);
    writeln('El número par mas alto es: ',numAlto);
    readln();
end;
begin
    ParAlto;
end.