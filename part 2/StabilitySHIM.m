function [ task, answer ] = StabilitySHIM()
coefNumerator = zeros(1,2);
coefDenominator = zeros(1,2);
T = randi([1,5])/10;
A = 1;
xi = randi([1,10])/100;
for i = 1:2    
    coefNumerator(i) = randi([-5, 5]);
    if coefNumerator(i) == 0
        coefNumerator(i) = randi([1,5]);
    end;
end;

for i = 1:2    
    coefDenominator(i) = randi([-5, 5]);
    if coefDenominator(i) == 0
        coefDenominator(i) = randi([1,5]);
    end;
end;

while (coefDenominator(1) == coefDenominator(2))
    coefDenominator(2) = randi([-5, 5]);
end;

syms s;
num = coefNumerator(1)*(s+coefNumerator(2));
denom = expand((s+coefDenominator(1))*(s+coefDenominator(2)));

task = [ 'Исследовать устойчивость ШИМ-системы управления со следующими характеистиками:\\$W(s) = ' latex(num/denom) '\\ T = ' num2str(T) '\\ A_{\text{и}} = ' num2str(A) '\\ \chi = ' num2str(xi) '$' ];

[r,p,k] = residue([coefNumerator(1), coefNumerator(1)*coefNumerator(2)], double(fliplr(coeffs(denom))));

syms z e;
s = z/(z-1);
Rz = 0;
for i=1:2
    if p(i) == 0
        Rz = Rz + s*r(i);
    else 
        a = vpa(p(i)*T);
        splusa = z/(z-e^a);
        Rz = Rz + splusa*r(i);
    end;
end;

[n,d] = numden(Rz);

pol = expand(n+d);

answer = 'Heустойчива';

pol = subs(pol, e, 2.7);
pol1 = double(subs(pol, z, 1));
pol2 = double(subs(pol, z, -1));

if (pol1>0 && pol2>0)
    answer = 'Устойчива';
end;

end

