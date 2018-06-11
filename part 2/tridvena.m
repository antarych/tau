function [task, answer] = tridvena()
coef = Generate312();
k=coef(1);
b=coef(2);
d=coef(3);
w=sqrt(d);
a=4*k/(d*b);
u=-4/a^2;
if u<0
    g=[' ������� ���������']
else
    g=[' ������� �����������']
end
if d==1
    r=['W_{l}(p)=\frac{' num2str(k) '}{(p^3+' num2str(b) 'p^2+p)}']
else
    r=['W_{l}(p)=\frac{' num2str(k) '}{(p^3+' num2str(b) 'p^2+' num2str(d) 'p)}']
end
s =[' A=' num2str(a) ', w=' num2str(w) g ]
equation = ['� ������� ����������� ����� ���������� ������� ���������� ����� ����� �������������� ���������� ���� � �������� ������� $c=\pi$ �������� ����� ����� ������ ������ �������' '$\\' r ' $' '� �������� ����������� g=' num2str(coef(4)) '. ����������� �������������'];
task = equation;
answer = s;
end