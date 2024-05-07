//Realizar un programa que lea 3 caracteres, e informe si los 3 eran vocalos o si al menos uno de ellos no lo era. Por ejemplo,
// si se leen los caracteres "zag" debera informar "al menos un caracter no es vocal.".
program LeerCaracteres;
var
caracter:char;
i,vocales:integer;
begin
    vocales:=0;
    for i:=1 to 3 do
    begin
       writeln('ingersa un caracter.');
       readln(caracter);
       if(caracter='a') or (caracter='e') or (caracter='i') or (caracter='o') or (caracter='u') then vocales:=vocales + 1;
    end;
    if vocales > 0 then writeln('De los 3 caracteres ingresados ',vocales,' son vocales.');
    readln(caracter);
end.