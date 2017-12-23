function [answer] = FindTransferFunction( coefY, coefU, coefV, type) %поиск передаточной функции
n = length(coefY);
syms p s numeratorU numeratorV denominator;

for i = n:-1:1
    if i == n
        numeratorU = coefU(i)*p^i;
        numeratorV = coefV(i)*p^i;
        denominator = coefY(i)*p^i;
    end;
    if i ~= n
        numeratorU = numeratorU + coefU(i)*p^i;
        numeratorV = numeratorV + coefV(i)*p^i;
        denominator = denominator + coefY(i)*p^i;
    end;
end;

Wu = latex(numeratorU/denominator);
Wv = latex(numeratorV/denominator);
Su = latex(simplify(numeratorU/denominator));
Ssu = strrep(Su,'p','s');
Sv = latex(simplify(numeratorV/denominator));
Ssv = strrep(Sv,'p','s');
answer1 = ['\\W_{u}(p) = ' Wu '\;\;\;\;\;\;\;\;W_{v}(p) = ' Wv];
answer2 = ['\\W_{1}(s) = ' Ssu '\;\;\;\;\;\;\;\;W_{2}(s) = ' Ssv];
switch type
    case 1
    answer = answer1;

    case 2
    answer = answer2;
end;
end

