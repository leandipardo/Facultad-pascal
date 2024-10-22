// Realizar un programa que lea información de centros de investigación de Universidades Nacionales. De cada
// centro se lee su nombre abreviado (ej. LIDI, LIFIA, LINTI), la universidad a la que pertenece, la cantidad de
// investigadores y la cantidad de becarios que poseen. La información se lee de forma consecutiva por universidad y
// la lectura finaliza al leer un centro con 0 investigadores, que no debe procesarse. Informar:
// -● Cantidad total de centros para cada universidad.
// -● Universidad con mayor cantidad de investigadores en sus centros.
// ● Los dos centros con menor cantidad de becarios.
program centrosInvestigacionUniversitarios;
type
    universidad = record
    nombre:string;
    pertenece:string;
    cantInvestigadores:integer;
    cantBecarios:integer;
    end;

procedure leer(var u:universidad);
begin
    writeln('Ingrese el nombre de la universidad: ');
    readln(u.nombre);
    writeln('Ingrese la universidad a la que pertenece: ');
    readln(u.pertenece);
    writeln('Ingrese la cantidad de investigadores de la universidad: ');
    readln(u.cantInvestigadores);
    writeln('Ingrese la cantidad de becarios de becarios de la universidad: ');
    readln(u.cantBecarios);
end;

procedure investigadoresPorCentro(u:universidad;var maxInv:integer; var uniMaxInv:string);
begin
    if (u.cantInvestigadores > maxInv) then 
    begin
        maxInv:=u.cantInvestigadores;
        uniMaxInv:=u.pertenece;
    end;
end;

procedure centrosMenorCantBecarios(u:universidad;var ult,anteUlt:integer; var ultCantBecarios,anteUltCantBecarios:string);
begin
    if u.cantBecarios < ult then
        begin
            anteUlt:=ult;
            anteUltCantBecarios:=ultCantBecarios;
            ult:=u.cantBecarios;
            ultCantBecarios:=u.nombre;
        end
    else if (u.cantBecarios < anteUlt) then
        begin
            anteUlt:=u.cantBecarios;
            anteUltCantBecarios:=u.nombre;
        end;
end;

var
    uni:universidad;
    ultimoCantidadBecarios,anteUltimoCantidadBecarios,uniMaxInvestigadores,univActual:string;
    ultimo,anteUltimo,maxInvestigadores,cantTotalCentros:integer;
begin
    leer(uni);
    cantTotalCentros:=0;
    maxInvestigadores:=0;
    ultimo:=9999;
    anteUltimo:=9999;
    ultimoCantidadBecarios:='';
    anteUltimoCantidadBecarios:='';
    while (uni.cantInvestigadores <> 0) do
    begin
        leer(uni);
        univActual:=uni.nombre;
        while((uni.cantInvestigadores <> 0) and (uni.nombre = univActual)) do
        begin
            cantTotalCentros:= cantTotalCentros +1;
            investigadoresPorCentro(uni,maxInvestigadores,uniMaxInvestigadores);
            centrosMenorCantBecarios(uni,ultimo,anteUltimo,ultimoCantidadBecarios,anteUltimoCantidadBecarios);
        end;
        writeln('La cantidad total de centros para la universidad ',univActual,' es de: ',cantTotalCentros);
        cantTotalCentros:=0;
    end;
        writeln('La universidad con mayor cantidad de investigadores es: ',uniMaxInvestigadores,' con: ',maxInvestigadores);
        writeln('Los dos centros con menor cantidad de becarios son : 1-',ultimoCantidadBecarios,' con: ', ultimo,' becarios ', '2-', anteUltimoCantidadBecarios,' con: ', anteUltimo,' becarios.');
        readln();
end.