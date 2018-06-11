function [task, answer] = S1102()
coef = Generate1102();
a=coef(1);
b=coef(2);
c=coef(3);
d=coef(4);
e=coef(5);
Am=[0 1 0; 0 0 1; -e -d -c];
bt=[0 0 1];
Q=[1 0 0; 0 1 0; 0 0 1];
P=lyap(Am,Q);
H=bt*P;
u1=d-b;
u2=c-a;
u=['u=g+k_{1}y-' num2str(u1) '\dot{y}-' num2str(u2) '\ddot{y}'];
S=['\dot{\hat{k_{3}}}=-qy[' num2str(H(1)) '(y-y_{m})+' num2str(H(2)) '(\dot{y}-\dot{y}_{m})+' num2str(H(3)) '(\ddot{y}-\ddot{y}_{m})]'];
r1=['\dddot{y} + ' num2str(a) '\ddot{y}+' num2str(b) '\dot{y} +a_{3}y=u'];
r2=['\dddot{y_{m}} + ' num2str(c) '\ddot{y_{m}}+' num2str(d) '\dot{y_{m}} +' num2str(e) 'y=g(t)'];
equation = ['Объект описывается урвнением ' '$\\' r1 ' $' ', где $a_{3}$ - неизвестный параметр. Определить адаптивный алгоритм управления с эалонной моделью при условии, что уравнеие эталонной модели имеет вид:''$\\' r2 ' $'];
task = equation;
answer = ['$' u ' $' '$\\' S ' $'];
end
