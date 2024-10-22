// dado el siguiente programa:
program registros;
type
    str20 = string[20];
    alumno = record
        codigo : integer;
        nombre : str20;
        promedio : real;
    end;
procedure leer(var alu : alumno);
begin
    writeln('ingrese el codigo del alumno');
    readln(alu.codigo);
    if(alu.codigo <> 0) then 
        begin
            writeln('ingrese el nombre del alumno');
            readln(alu.nombre);
            writeln('ingrese el promedio del alumno');
            readln(alu.promedio);
        end;
end;
var
    a:alumno;
    i:integer;
    promedio:real;
begin
    promedio:=-1;
    i:=0;
    repeat
      leer(a);
      if (a.codigo <> 0) then i:= i + 1;
      if (a.promedio > promedio) then promedio:=a.promedio;
      until a.codigo = 0;
    writeln(' la cantidad de alumnos leidos es de ', i);
    writeln(' el promedio mas alto es de ', promedio);
    readln();
end.
// a) complete el programa principal para que lea informacion de alumnos (codigo ,nombre, promedio) e informe la cantidad de alumnos leidos.
// la lectura finaliza cuando ingresa un alumno con codigo 0, que no debe procesarse. nota : utilizar el modulo leer.

// b) modificar el programa anterior para que , al finalizar la lectura de todos los alumnos, se informe tambien el nombre del alumno con mejor promedio.