// Realizar un programa que lea desde el teclado informacion de autos de carrera. Para cada uno de los autos
// se lee el nombre del piloto y el tiempo total que le tomo finalizar la carrera. en la carrera
// participaron 100 autos. informar en pantalla:
//     #Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
//     #Los nombres de los dos pilotos que finalizaron en los dos ultimos puestos.
//                                                                                                      FALTA TERMINAR.
//1 tomar los datos
program carreras;
var
    nombre,primerPuesto,segundoPuesto,ultimoPuesto,anteultimoPuesto:string;
    tiempo,tiempoLento,tiempoRapido:real;
    count:integer;
begin
    tiempoRapido:=65000;
    tiempoLento:=-65000;
    segundoPuesto:='';
    primerPuesto:='';
    for count := 1 to 10 do
    begin
        writeln('Ingrese el nombre.[',count,'/100].');
        readln(nombre);
        writeln('Ingrese el tiempo.[',count,'/100].');
        readln(tiempo);
        if(tiempo <= tiempoRapido)then
        begin
            segundoPuesto:=primerPuesto;
            primerPuesto:=nombre;
        end
        else if(tiempo >= tiempoLento) then
        begin
            anteultimoPuesto:=ultimoPuesto;
            ultimoPuesto:=nombre;
        end;
    end;
    writeln('Los nombres de los dos pilotos que finalizaron en los primeros puestos son: 1',primerPuesto,'. 2',segundoPuesto,'.');
    writeln('Los nombres de los dos pilotos que finalizaron en los ultimos puestos son: 99',anteultimoPuesto,'. 100',ultimoPuesto,'.');
    readln(tiempo);
end.
