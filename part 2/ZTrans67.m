function [ task, answer ] = ZTrans67()

coefNumerator = zeros(1,2);
coefDenominator = zeros(1,3);
T = randi([1,5])/10;

for i = 1:2    
    coefNumerator(i) = randi([-5, 5]);
end;

for i = 1:2    
    coefDenominator(i) = randi([-5, 5]);
end;

while (coefDenominator(1) == coefDenominator(2))
    coefDenominator(2) = randi([-5, 5]);
end;

syms s;

num1 = coefNumerator(1);
den1 = (s+coefDenominator(1));
first = num1/den1;
num2 = coefNumerator(2);
den2 = (s+coefDenominator(2));
second = num2/den2;

task = latex(simplify((expand(num1*den2)+expand(num2*den1))/expand(den1*den2)));
task = [ 'Определить $Z_{T}$-изображение при периоде $T = ' num2str(T) '$ следующих передаточных функций:\\' '$W(s) = ' task '$'];
syms z e
s = z/(z-1);
Rz = 0;
for i=1:2
    if coefDenominator(i) == 0
        Rz = Rz + s*coefNumerator(i);
    else 
        a = vpa(coefDenominator(i)*T);
        splusa = z/(z-e^a);
        Rz = Rz + splusa*coefNumerator(i);
    end;


answer = [ '$X^*(z) = ' latex((Rz)) '$' ];

end;
