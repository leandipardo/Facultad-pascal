// Enunciado: Realice un programa que lea datos de 130 programadores Java de una empresa. De cada
// programador se lee el número de legajo y el salario actual. El programa debe imprimir el total del dinero
// destinado por mes al pago de salarios, y el salario del empleado mayor legajo.
program programadoresJava;
procedure procLegajos(var salEmp,total:real;var maxLegajo:integer);
var
numLeg:integer;
salAct:real;
begin
    writeln('Ingrese el numero de legajo: ');
    readln(numLeg);
    writeln('Ingrese el salario actual: ');
    readln(salAct);
    total:=total+salAct;
    if(numLeg >= maxLegajo) then 
    begin
        salEmp:=salAct;
        maxLegajo:=numLeg;
    end;
end;
var
maxLegajo:integer;
salEmp,total:real;
i:integer;
begin
    maxLegajo:= -32767;
    total:=0;
    salEmp:=0;
    for i := 1 to 130 do procLegajos(salEmp,total,maxLegajo);
    writeln('El total de dinero es: ',total:0:2);
    writeln('el salario del empleado de mayor legajo es: ', salEmp:0:2);
    readln();
end.