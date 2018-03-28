function [task, answer] = Krit() %задание на определение критического запаздывания и критической частоты
coef = GenerateKrit();
a=0.25;
k=coef(1);
b=coef(2);
d=(b^2-2*a)^2-4*a^2*(1-k^2);
w=sqrt((2*a^2-b^2+sqrt(d))/(2*a^2));
t=(pi-atan(w))/w;
g=['$\omega_{k}=' num2str(w) '\;\;\;\;\tau_{k}=' num2str(t) '$'];
eq = ['\frac{' num2str(k) '}{' num2str(a) 's^2+' num2str(b) 's+1}e^{-\tau s}'];
equation = ['Определить критическое запаздывание и критическую частоту для системы, у которой передаточная функция в разомкнутом состоянии имеет следующий вид:$\\' eq '$'];
task = equation;
answer = g;
end