// Realizar un programa que lea números enteros desde teclado hasta que se ingrese el valor -1 (que no
// debe procesarse) e informe:
// a. la cantidad de ocurrencias de cada dígito procesado.
// b. el dígito más leído.
// c. los dígitos que no tuvieron ocurrencias.
// Por ejemplo, si la secuencia que se lee es: 63 34 99 94 96 -1, el programa deberá informar:

// Número 3: 2 veces
// Número 4: 2 veces
// Número 6: 2 veces
// Número 9: 4 veces
// El dígito más leído fue el 9.

Program arrNrosEnteros;
const
    cant=100;
type
    vnum = array[1..cant] of integer;
    vdig = array[0..9] of integer;
procedure leer(var arr:vnum);
var
    i,numIngresado:integer;
begin
    i:=1;
    readln(numIngresado);
    while numIngresado <> -1 do
    begin
        arr[i]:=numIngresado;
        i:=i + 1;
    end;
end;

procedure ocurrencias(var arr:vnum;var nums:vdig);
var
digito,i:integer;
begin
    for i := 1 to cant do
    begin
        while arr[i] <> 0 do
        begin
            digito := arr[i] mod 10;  { Obtener el último dígito }
            nums[digito] := nums[digito] + 1;  { Incrementar el contador del dígito }
            arr[i] := arr[i] div 10;  { Eliminar el último dígito del número }
        end;
    end;
        
end;

procedure masLeidoySinOcurrencias(nums:vdig;var max:integer);
var
i:integer;
begin
    for i := 0 to 9 do
        if nums[i] = 0 then writeln('El numero ',nums[i],' tiene 0 ocurrencias.')
        else if nums[i] >= nums[max] then max:= i;
end;

var
arr:vnum;
dig:vdig;
max:integer;
begin
    max:=0;
    leer(arr);
end.

// a. la cantidad de ocurrencias de cada dígito procesado.
// b. el dígito más leído.
// c. los dígitos que no tuvieron ocurrencias.
// Por ejemplo, si la secuencia que se lee es: 63 34 99 94 96 -1, el programa deberá informar: