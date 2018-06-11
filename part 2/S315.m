function [task, answer] = S315()
coef = Generate315();
k=coef(1);
b=coef(2);
c=coef(3);
w=sqrt(c);
h=coef(4);
d=1-4*(b*c/(4*k));
a=sqrt(-1+sqrt(d));
u=-4/a^2;
if d<0
    g=[' ������������� ���']
else
    g=[' ������������� ����']
    if u<0
        g=[' ������� ���������']
    else
        g=[' ������� �����������']
    end
end
if c==1
    r=['W_{l}(p)=\frac{' num2str(k) '}{(p^3+' num2str(b) 'p^2+p)}']
else
    r=['W_{l}(p)=\frac{' num2str(k) '}{(p^3+' num2str(b) 'p^2+' num2str(c) 'p)}']
end
s =[' A=' num2str(a) ', w=' num2str(w) g ]
equation = ['� ������� ����������� ����� ���������� ������� ���������� ����� ����� �������� �������������� � ����� ������������������ � �������� ������� $c=\pi$ � ����� ������������������ a=1, �������� ����� ����� ������������ �������' '$\\' r ' $' '� �������� ����������� g=' num2str(coef(4)) '. ����������� �������������'];
task = equation;
answer = g;
end