// Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números
// reales. La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo
// número, en cuyo caso deberá informarse “No se ha ingresado el doble de X”.
program DobleDeX;
var
num1,num2: real;
contador: integer;
isdouble: boolean;
begin
    isdouble:=false;
    num2:=0;
    write(Utf8ToAnsi('Ingrese un número'));
    read(num1);
    while isdouble <> true do
    begin
        write(Utf8ToAnsi('ingrese 10 números entre ellos el doble de ese:'));
        for contador := 0 to 9 do
        begin
            read(num2);
            if (num2 = num1 * 2) then isdouble := true;
        end;
         write('No se ha ingresado el doble de X');
    end;

end.