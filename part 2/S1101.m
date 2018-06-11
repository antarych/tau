function [task, answer] = S1101()
coef = Generate1101();
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
u=['u=g+k_{1}y-k_{2}\dot{y}-k_{3}\ddot{y}'];
S1=['\dot{\hat{k_{1}}}=-q\ddot{y}[' num2str(H(1)) '(y-y_{m})+' num2str(H(2)) '(\dot{y}-\dot{y}_{m})+' num2str(H(3)) '(\ddot{y}-\ddot{y}_{m})]'];
S2=['\dot{\hat{k_{2}}}=-q\dot{y}[' num2str(H(1)) '(y-y_{m})+' num2str(H(2)) '(\dot{y}-\dot{y}_{m})+' num2str(H(3)) '(\ddot{y}-\ddot{y}_{m})]'];
S3=['\dot{\hat{k_{3}}}=-qy[' num2str(H(1)) '(y-y_{m})+' num2str(H(2)) '(\dot{y}-\dot{y}_{m})+' num2str(H(3)) '(\ddot{y}-\ddot{y}_{m})]'];
r1=['\dddot{y} + a_{1}\ddot{y}+a_{2}\dot{y} +a_{3}y=u'];
r2=['\dddot{y_{m}} + ' num2str(c) '\ddot{y_{m}}+' num2str(d) '\dot{y_{m}} +' num2str(e) 'y=g(t)'];
equation = ['Объект описывается урвнением ' '$\\' r1 ' $' ', где $a_{1}, a_{2}, a_{3}$ - неизвестные параметры. Определить адаптивный алгоритм управления с эалонной моделью при условии, что уравнеие эталонной модели имеет вид:''$\\' r2 ' $'];
task = equation;
answer = ['$' u ' $' '$\\' S1 ' $' '$\\' S2 ' $' '$\\' S3 ' $'];
end
