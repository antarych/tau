function [task, answer] = S405()
coef = Generate405();
a=coef(1);
b=coef(2);
c=coef(3);
d=coef(4);
x1=0;
y1=0;
x2=sqrt(b*c/d-a);
y2=-c*x2/d;
x3=-sqrt(b*c/d-a);
y3=-c*x3/d;
h=-a-3*(b*c/d-a)
if 4*(h*d+b*c)<0
    r2=['(' num2str(x2) ',' num2str(y2) ')' ' - не устойчиво']
    r3=['(' num2str(x3) ',' num2str(y3) ')' ' - не устойчиво']
else
    r2=['(' num2str(x2) ',' num2str(y2) ')' ' - устойчиво']
    r3=['(' num2str(x3) ',' num2str(y3) ')' ' - устойчиво']
end
if (a-d)^2-4*(b*c-a*d)>0
    if (d-a+sqrt((a-d)^2-4*(b*c-a*d)))<0
    r1=['(' num2str(x1) ',' num2str(y1) ')' ' - устойчиво']
    else
        r1=['(' num2str(x1) ',' num2str(y1) ')' ' -не устойчиво']
    end
else
    if(a-d)<0
        r1=['(' num2str(x1) ',' num2str(y1) ')' ' - устойчиво']
    else
        r1=['(' num2str(x1) ',' num2str(y1) ')' ' - не устойчиво']
end
r=['\begin{cases} \dot{x_{1}}=-x_{1}(' num2str(a) '+x^{2}_{1})-' num2str(b) 'x_{2}) &  \\ \dot{x_{2}}=' num2str(c) 'x_{1}+' num2str(d) 'x_{2}) &  \end{cases}']
equation = ['Определить и исследовать устойчивость положения равновесия следующей системы: ' '$\\' r ' $' ];
task = equation;
answer = ['$' r1 ' $' '$\\' r2 ' $' '$\\' r3 ' $'];
end
