// Una empresa importadora de microprocesadores desea implementar un sistema de software para analizar la
// información de los productos que mantiene actualmente en stock. Para ello, se conoce la siguiente información de
// los microprocesadores: marca (Intel, AMD, NVidia, etc), línea (Xeon, Core i7, Opteron, Atom, Centrino, etc.),
// cantidad de cores o núcleos de procesamiento (1, 2, 4, 8), velocidad del reloj (medida en Ghz) y tamaño en
// nanómetros (nm) de los transistores (14, 22, 32, 45, etc.). La información de los microprocesadores se lee de
// forma consecutiva por marca de procesador y la lectura finaliza al ingresar un procesador con 0 cores (que no
// debe procesarse). Se pide implementar un programa que lea información de los microprocesadores de la empresa
// importadora e informe:

// ● Marca y línea de todos los procesadores de más de 2 cores con transistores de a lo sumo 22 nm.
// ● Las dos marcas con mayor cantidad de procesadores con transistores de 14 nm.
// ● Cantidad de procesadores multicore (de más de un core) de Intel o AMD, cuyos relojes alcancen velocidades de
// al menos 2 Ghz.

program importadoraProcesadores;
type
    cpu = record
    marca:string;
    linea:string;
    nucleos:integer;
    velocidad:real;
    transistores:real;
    end;

procedure leer(var proc:cpu);
begin
    writeln('Ingrese la marca: ');
    readln(proc.marca);
    writeln('ingrese la linea: ');
    readln(proc.linea);
    writeln('ingrese los nucleos: ');
    readln(proc.nucleos);
    writeln('ingrese la velocidad: ');
    readln(proc.velocidad);
    writeln('ingrese el tamaño de los transistores: ');
    readln(proc.transistores);
end;

procedure dualCore(proc:cpu; var totalDualCore:string);
begin
    if ((proc.nucleos > 2) and (proc.transistores <= 22)) then totalDualCore:= proc.marca + '|' + proc.linea + ';' + totalDualCore;
end;

procedure mayorCatorceNm(proc:cpu; var maxActual, primerMax, segundoMax:integer);
begin
    if (proc.transistores = 14) then maxActual := maxActual+1;
    if (maxActual >= primerMax) then
    begin
        segundoMax:=primerMax;
        primerMax:=maxActual;
    end
    else if (maxActual >= segundoMax) then segundoMax:= maxActual;
end;

procedure multiNucleo(clock:real; var cant:integer);
begin
    if (clock > 2) then cant:= cant + 1;
end;

var
    procesador:cpu;
    totalDualCore,actual:string;
    maxActual,primerMax,segundoMax,multicore:integer;
begin
    primerMax:=0;
    segundoMax:=0;
    multicore:=0;
    totalDualCore:=' ';
    leer(procesador);
    while procesador.nucleos <> 0 do
    begin
        maxActual:=0;
        leer(procesador);
        actual := procesador.marca;
        while ((procesador.nucleos <> 0) and (procesador.marca = actual)) do
        begin
            leer(procesador);
            dualCore(procesador,totalDualCore);
            mayorCatorceNm(procesador,maxActual,primerMax,segundoMax);
            if (((procesador.marca = 'Intel') or (procesador.marca = 'AMD')) and (procesador.nucleos > 1)) then multiNucleo(procesador.velocidad,multicore);
        end;
    end;
    writeln('Los procesadores de mas de 2 cores con transistores de 22nm o menos son: ', totalDualCore);
    writeln('Las dos marcas con mayor cantidad de procesadores de 14nm son: 1ero',primerMax,' 2do ',segundoMax);
    writeln('La cantidad de procesadores multicore de Intel o AMD, cuyos relojes son mas de 2ghz son: ',multicore);
end.