function [ task, answer ] = TrFuncFromDiffEq()
%получить передаточную функцию дискретной системы, которая описывается
%данным разностным уравнением (в операторойно форме или в z-изображениях)
%или по передаточной функции найти разностное уравнение

type = randi([1,3]); %выбираем тип задания

countY = randi([2, 4]); %определяем количество слагаемых в кажой части
countU = randi([1, 4]);

coefY = zeros(1,4); %генерируем коэффициенты
coefU = zeros(1,4);
for i = 1:countY
    coefY(i) = randi([1, 5]);
end;
for i = 1:countU    
    coefU(i) = randi([1, 5]);
end;

diffEq = []; %пустая строка для разностного уравнения

numerator = []; %числитель передаточной функции
denominator = []; %знаменатуль передаточной функции
syms z num den;

for i = countY:-1:1 %приделываем в разностное уравнение коэффициенты
    diffEq = [ diffEq ' ' num2str(coefY(i)) 'y(t + ' num2str(i-1) 'T)' ];
    if (i ~= 1)
        diffEq = [ diffEq ' + ' ];
    end;
    denominator = [ denominator ' ' num2str(coefY(i)) 'E^' num2str(i-1) ];
    if (i ~= 1)
        denominator = [ denominator ' + ' ];
    end;
    if i == countY
        den = coefY(i)*z^(i-1);
    else
        den = den + coefY(i)*z^(i-1);
    end;
end;
diffEq = [diffEq ' = '];

for i = countU:-1:1
    diffEq = [ diffEq ' ' num2str(coefU(i)) 'u(t + ' num2str(i-1) 'T)' ];
    if (i ~= 1)
        diffEq = [ diffEq ' + ' ];
    end;
    numerator = [ numerator ' ' num2str(coefU(i)) 'E^' num2str(i-1) ];
    if (i ~= 1)
        numerator = [ numerator ' + ' ];
    end;
    if i == countU
        num = coefU(i)*z^(i-1);
    else
        num = num+coefU(i)*z^(i-1);
    end;
end;
trFunc = [];
trFunc = [ trFunc '\frac{' num2str(numerator) '}{' num2str(denominator) '}'];

if (type == 1)
    task = [ 'Найдите передаточную функцию (в операторной форме) дискретной системы, которая описывается данным разностным уравнением\\' strrep(strrep(diffEq, '1', ''), ' + 0T', '')];
    answer = [ '$' 'W^*(E) = ' strrep(strrep(strrep(strrep([trFunc '$' ], '^1', ''), '1E^0', '1'), 'E^0', ''), '1E', 'E') ];
end;

if (type == 2)
    task = [ 'Найдите передаточную функцию (в z-изображениях) дискретной системы, которая описывается данным разностным уравнением\\' strrep(strrep(diffEq, '1', ''), ' + 0T', '')];
    answer = [ '$'  'W^*(z) = ' latex(simplify(num/den)) '$' ];
   
end;

if (type == 3)
    answer = strrep(strrep(diffEq, '1', ''), ' + 0T', '');
    task = [ 'Найти разностное уравнение по передаточной функции:' strrep(strrep(strrep(strrep([ '$' trFunc '$' ], '^1', ''), '1E^0', '1'), 'E^0', ''), '1E', 'E')];
end;

end

