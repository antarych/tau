function [task, answer] = S401()
coef = Generate401();
a=(coef(1))^2;
b=(coef(2))^2;
f=(coef(3))^2;
c=2*(coef(1))*(coef(2));
d=2*(coef(1))*coef(3);
if coef(4)==0
    if a==1
    r=['V(x)=x^{2}_{1}+' num2str(b) 'x^{2}_{2}+x^{2}_{3}+' num2str(c) 'x_{1}x_{2}']
    else
    r=['V(x)=' num2str(a) 'x^{2}_{1}+' num2str(b) 'x^{2}_{2}+x^{2}_{3}+' num2str(c) 'x_{1}x_{2}']
    end
else
    if a==1
    r=['V(x)=2x^{2}_{1}+' num2str(b) 'x^{2}_{2}+' num2str(f) 'x^{2}_{3}+' num2str(c) 'x_{1}x_{2}+' num2str(f) 'x_{1}x_{3}' ]
    else
    r=['V(x)=' num2str(2*a) 'x^{2}_{1}+' num2str(b) 'x^{2}_{2}+' num2str(f) 'x^{2}_{3}' num2str(c) 'x_{1}x_{2}+' num2str(f) 'x_{1}x_{3}']
    end
end
g = 'Функция положительно полуопределена';
equation = [' Определить, является ли положительно определенной, положительно полуопределенной, отрицательно определенной или отрицательно полуопределенной в пространстве $R^3$ следующая квадратичная форма' '$\\' r ' $'];
task = equation;
answer = g;
end