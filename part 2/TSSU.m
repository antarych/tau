function [ task, answer ] = TSSU()
numR = zeros([1,2]);
numW = randi([1,10]);
syms z s e T;
denomR = z - 1;
denomW = zeros([1,2]);
denomW(1) = randi([1,10])/10;
denomW(2)=randi([1,3]);
T = randi([1,5])/100;
for i=1:2
    numR(i) = randi([1,5]);
end;
task = [ 'Исследовать устойчивость ЦСУ, у которого период следования Т = ' num2str(T) ' и передаточные функции регулятора ДФ и НЧ имеют следующий вид:\\$R*(z) = ' latex((numR(1)*z-numR(2))/denomR) '\\W_{\text{н}}(s) = ' latex(numW/(denomW(1)*s+denomW(2))) '$' ];
numeratorW = (z-1)*numW;
denominatorW = z;
coeff = [1, denomW(2)/denomW(1), 0];
[r, p, k] = residue(1/denomW(1), coeff);
Rz = 0;
ansNum = [s, s];
ansDenom = [s, s];
for i=1:2
    if p(i) == 0
        answNum(i) = z*r(i);
        answDenom(i) = z-1;
    else 
        a = p(i)*T;
        answNum(i) = z* r(i);
        answDenom(i) = z-e^(a);
    end;
end;

W = ((expand(answNum(1)*answDenom(2))+expand(answNum(2)*answDenom(1)))/(answDenom(1)*answDenom(2)));
W = simplify(W*numeratorW/denominatorW);
[numW, denomW] = numden(W);
numR = (numR(1)*z-numR(2));
pol = expand(numW*numR+denomR*denomW);
coef = fliplr(coeffs(pol, z));

answer = 'Heустойчива';

pol = subs(pol, e, 2.7);
pol1 = double(subs(pol, z, 1));
pol2 = double(subs(pol, z, -1));

if (pol1>0 && pol2>0)
    answer = 'Устойчива';
end;

end

