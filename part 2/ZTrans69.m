function [ task, answer ] = ZTrans69()

coefNumerator = zeros(1,2);
coefDenominator = zeros(1,3);
T = 0.1;
tau = randi([1,10])*5/100;

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
syms x;
syms e;
k = solve(tau<=x*T, (x-1)*T<tau, x);
eps = k-tau/T;

num1 = coefNumerator(1);
den1 = (s+coefDenominator(1));
num2 = coefNumerator(2);
den2 = (s+coefDenominator(2));

task = [ latex(simplify(((expand(num1*den2)+expand(num2*den1))/expand(den1*den2)))) 'e^{-' num2str(tau) 's}' ];
task = [ 'Определить $Z_{T}$-изображение при периоде $T = ' num2str(T) '$ следующих передаточных функций:\\' '$W(s) = ' task '$'];
syms z e
s = z/(z-1);
Rz = 0;
for i=1:2
    if coefDenominator(i) == 0
        Rz = Rz + s*z^(-k)*coefNumerator(i);
    else 
        a = (coefDenominator(i)*T);
        splusa = z^(-k)*z*exp(sym(-eps*a))/(z-exp(sym(a)));
        Rz = Rz + splusa*coefNumerator(i);
    end;


answer = [ '$W^*(z) = ' latex(Rz) '$' ];

end

