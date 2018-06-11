function [task, answer] = S404()
coef = Generate404();
a=coef(1);
b=coef(2);
c=coef(3);
d=b*a;
if (coef(4))==0
    r=['\dddot{y}+' num2str(a) '\ddot{y}+' num2str(b) '\dot{y}+' num2str(c) '(e^y-1)']
else
    r=['\dddot{y}+' num2str(a) '\ddot{y}+' num2str(b) '\dot{y}+' num2str(c) '\arcsin(y)+y^3']
end
if (d<c)
    g=[ 'Неустойчиво' ];
else
    g=[ 'Устойчиво' ];
end
equation = ['Исследуйте устойчивость нулевого решения следующего уравнения: ' '$\\' r g ' $' ];
task = equation;
answer = g;
end
