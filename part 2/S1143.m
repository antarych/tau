function [task, answer] = S1143()
coef = Generate1143();
al1=coef(1);
al2=coef(2);
al3=coef(3);
a2=coef(5);
a3=coef(6);
b3=coef(7);
h2=al2-a2;
h3=al3-a3;
w0=['W_{0}=\frac{' num2str(b3) '}{p^3+a_{1}p^2+' num2str(a2) 'p+' num2str(a3) '}']
a0=['A_{0}(p)=p^3+' num2str(al1) 'p^2+' num2str(al2) 'p+' num2str(al3)]
y=['\dot{\tilde{y}}_{1}=\tilde{y}_{1}, \dot{\tilde{y}}_{2}=\tilde{y}_{3}, \dot{\tilde{y}}_{3}=-' num2str(al3) '\tilde{y}_{1}-' num2str(al2) '\tilde{y}_{2}-' num2str(al1) '\tilde{y}_{3}+y,']
u=['\dot{\tilde{u}}_{1}=\tilde{u}_{2}, \dot{\tilde{u}}_{2}=\tilde{u}_{3}, \dot{\tilde{u}}_{3}=-' num2str(al3) '\tilde{u}_{1}-' num2str(al2) '\tilde{u}_{2}-' num2str(al1) '\tilde{u}_{3}+u,']
y1=['\hat{y}=(' num2str(al1) '-\hat{a}_{1})\tilde{y}_{3}+' num2str(h2) '\tilde{y}_{2}' num2str(h3) '\tilde{y}_{1}+' num2str(b3) '\tilde{u}_{1},']
a=['\dot{\hat{a}}_{1}=k_{1}({\hat{y}}-y)']
g=['a) \dot{p_{ij}}=-k_{i}k_{j}(i,j=1,....6), b) \dot{p_{ij}}=p_{ij}-k_{i}k_{j}(i,j=1,....6)']
equation = ['Задан объект передаточной функцией: ' '$\\' w0 ' $' ', где ' '$\\ a_{1}  $' ' - неизвестный параметр. При условии, что собственный оператор фильтров имеет вид:''$\\' a0 ' $ определить:\\ а)МНК-алгоритм идентификации неизвестного параметра б) МНК-алгоритм идентификации неизвестного параметра с экспоненциальной потерей памяти с потерей памяти $\lambda=1$' ];
task = equation;
answer = ['$' y ' $' '$\\' u ' $' '$\\' y1 ' $' '$\\' a ' $' '$\\' g ' $'];
end
