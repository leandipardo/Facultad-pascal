// 4. Una compañía de telefonía celular debe realizar la facturación mensual de sus 9300 clientes con planes de
// consumo ilimitados (clientes que pagan por lo que consumen). Para cada cliente se conoce su código de cliente y
// cantidad de líneas a su nombre. De cada línea se tiene el número de teléfono, la cantidad de minutos consumidos
// y la cantidad de MB consumidos en el mes. Se pide implementar un programa que lea los datos de los clientes de
// la compañía e informe el monto total a facturar para cada uno. Para ello, se requiere:
// a. Realizar un módulo que lea la información de una línea de teléfono.
// b. Realizar un módulo que reciba los datos de un cliente, lea la información de todas sus líneas (utilizando el
// módulo desarrollado en el inciso a. ) y retorne la cantidad total de minutos y la cantidad total de MB a facturar
// del cliente.
// Nota: para realizar los cálculos tener en cuenta que cada minuto cuesta $3,40 y cada MB consumido cuesta $1,35.

// numero de clientes: 9300.
// registro cliente: codigo de cliente, cantidad de lineas a su nombre y numeros de telefono.
// registro linea: numero de telefono, minutos consumidos, mb consumidos en el mes.


// leer los datos de los clientes de la compañia e informar el monto total a facturar para cada uno.

// modularizacion:
//     1 modulo q lee informacion de una linea de telefono
//     2 modulo que recibe los datos de un cliente, lee informacio de sus lineas (con el 1er modulo) y devuelve la cantidad total de minutos
//     y la cantidad total de mb a facturar.

// cada minuto cuest $3,40 y cada mb $1,35




program companiaCelular;
type
    cliente = record
        codigoDeCliente:integer;
        cantidadDeLineas:integer;
    end;
    lineas = record
        numeroDeTelefono:int64;
        cantidadMinutosConsumidos:integer;
        cantidadDeMbConsumidos:integer;
    end;
procedure lineaDeTelefono(var linea:lineas);
begin
    writeln('Ingresa numero de telefono: ');
    readln(linea.numeroDeTelefono);
    writeln('Ingresa la cantidad de minutos consumidos: ');
    readln(linea.cantidadMinutosConsumidos);
    writeln('Ingresa la cantidad de mega bytes consumidos: ');
    readln(linea.cantidadDeMbConsumidos);
end;
procedure datosDeCliente(var user: cliente);
var    
i:integer;
linea:lineas;
begin
    writeln('Ingrese el codigo de cliente: ');
    readln(user.codigoDeCliente);
    writeln('Ingrese la cantidad de lineas que posee el cliente: ');
    readln(user.cantidadDeLineas);
    for i:=1 to  user.cantidadDeLineas do
    begin
        lineaDeTelefono(linea);
        writeln('Los gastos del cliente: ',user.codigoDeCliente,' Son de:');
        writeln('Precio MB consumidos: $',linea.cantidadDeMbConsumidos * 1.35:0:2);
        writeln('Precio minutos consumidos: $',linea.cantidadMinutosConsumidos * 3.40:0:2);
        writeln('###########################################################################');
    end; 
end;
var
    i:integer;
    user:cliente;
begin
for i := 0 to 300 do datosDeCliente(user);
end.