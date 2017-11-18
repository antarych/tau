function DU = SaveDifferentialEquation(coefY, coefU, coefV) %формирование ДУ для записи в файл
n = length(coefY);
fullPartY = '';
fullPartU = '';
fullPartV = '';
partY = '';
partU = '';
partV = '';
for i = n:-1:1;
    if i == 1
        derivativeY = 'y';
        derivativeU = 'u';
        derivativeV = 'v';
    end;
    if i == 2
        derivativeY = '\dot{y}';
        derivativeU = '\dot{u}';
        derivativeV = '\dot{v}';
    end;
    if i == 3
        derivativeY = '\ddot{y}';
        derivativeU = '\ddot{u}';
        derivativeV = '\ddot{v}';
    end;
    if i == 4
        derivativeY = '\dddot{y}';
        derivativeU = '\dddot{u}';
        derivativeV = '\dddot{v}';
    end;
    if coefY(i) ~= 0
        coef = num2str(coefY(i));
        if coefY == 1
            coef = '';
        end;
        partY = [fullPartY '' coef derivativeY];
        if i~=1  
            fullPartY = partY;
            partY = [fullPartY ' + '];
        end;
    end;
    if coefU(i) ~= 0
        coef = num2str(coefU(i));
        if coefU == 1
            coef = '';
        end;
        partU = [fullPartU '' num2str(coefU(i)) derivativeU];
        if i~=1  
            fullPartU = partU;
            partU = [fullPartU ' + '];
        end;
    end;
    if coefV(i) ~= 0
        coef = num2str(coefV(i));
        if coefV == 1
            coef = '';
        end;
        partV = [fullPartV '' num2str(coefV(i)) derivativeV];
        if i~=1
            fullPartV = partV;
            partV = [fullPartV ' + '];       
        end;
    end;
    fullPartY = partY;
    fullPartU = partU;
    fullPartV = partV;
end
a = length(fullPartY);
if fullPartY(a-1) == '+'
    fullPartY(a) = [];
    fullPartY(a-1) = [];
end;
a = length(fullPartU);
if fullPartU(a-1) == '+'
    fullPartU(a) = [];
    fullPartU(a-1) = [];
end;
a = length(fullPartV);
if fullPartV(a-1) == '+'
    fullPartV(a) = [];
    fullPartV(a-1) = [];
end;
equation = [fullPartY ' = ' fullPartU ' + ' fullPartV];   
DU = ['\\' equation];
end

