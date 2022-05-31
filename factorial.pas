program UD;

{$APPTYPE CONSOLE}

function Faсtorial(n: real): real;
begin
if (n = 1) then
Faсtorial:= 1
else
begin
Faсtorial:= (n * Faсtorial(n - 1));
end;
end;

var
n,otv: real;
i: byte;

begin
i:= 1;
repeat
if (i <> 1) then
begin
writeln('Выберите верный вариант');
writeln('1. Да');
writeln('2. Нет');
readln(i);
end
else
begin
writeln('Введите целое число');
readln(n);
if (n < 0) then
writeln('Невозможно вычислить факториал')
else
if ((n = 0) or (n = 1)) then
writeln('Факториал равен 1')
else
if (trunc(n) = n) then
begin
otv:= Faсtorial(n);
writeln('Факториал равен ', trunc(otv))
end
else
writeln('Введено неверное значение');
writeln('Хотите продолжить?');
writeln('1. Да');
writeln('2. Нет');
readln(i);
end;
until (i = 2);
end.
