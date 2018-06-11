function [task, answer] = S1131()
coef = Generate1131();
al1=coef(1);
al2=coef(2);
al3=coef(3);
a1=coef(4);
a2=coef(5);
a3=coef(6);
b1=coef(7);
b2=coef(8);
h1=al1-a1;
h2=al2-a2;
h3=al3-a3;
w0=['W_{0}=\frac{' num2str(b1) 'p^2+' num2str(b2) 'p+b_{3}}{p^3+' num2str(a1) 'p^2+' num2str(a2) 'p+' num2str(a3) '}']
a0=['A_{0}(p)=p^3+' num2str(al1) 'p^2+' num2str(al2) 'p+' num2str(al3)]
y=['\dot{\tilde{y}}_{1}=\tilde{y}_{1}, \dot{\tilde{y}}_{2}=\tilde{y}_{3}, \dot{\tilde{y}}_{3}=-' num2str(al3) '\tilde{y}_{1}-' num2str(al2) '\tilde{y}_{2}-' num2str(al1) '\tilde{y}_{3}+y,']
u=['\dot{\tilde{u}}_{1}=\tilde{u}_{2}, \dot{\tilde{u}}_{2}=\tilde{u}_{3}, \dot{\tilde{u}}_{3}=-' num2str(al3) '\tilde{u}_{1}-' num2str(al2) '\tilde{u}_{2}-' num2str(al1) '\tilde{u}_{3}+u,']
y1=['\hat{y}=' num2str(h1) '\tilde{y}_{3}+' num2str(h2) '\tilde{y}_{2}' num2str(h3) '\tilde{y}_{1}+' num2str(b1) '\tilde{u}_{3}+' num2str(b2) '\tilde{u}_{2}+\hat{b}_{3}\tilde{u}_{1},']
b=['\dot{\hat{b}}_{3}=-\gamma\tilde{u}_{1}({\hat{y}}-y)']
equation = ['Задан объект передаточной функцией: ' '$\\' w0 ' $' ', где $b_{3}$ - неизвестный параметр. Определить градиентный алгоритм идентификации неизвестного параметра при условии, что собственный оператор фильтров имеет вид:''$\\' a0 ' $'];
task = equation;
answer = ['$' y ' $' '$\\' u ' $' '$\\' y1 ' $' '$\\' b ' $'];
end
