function [task, answer] = S406()
coef = Generate405();
a=coef(1);
b=coef(2);
c=coef(3);
r1 = '�� ���������';
if (c>0)
    r1 = '���������';
end
r = ['\begin{cases} \dot{x_{1}}= ' num2str(a) 'x_{2}-' num2str(b) 'x_{1}^{2}&  \\ \dot{x_{2}}=-x_{1}-' num2str(c) 'Sin(x_{2}) &  \end{cases}']
equation = ['����������� ������������ ��������� ���������� (0,0) ��������� ������� ' '$\\' r ' $' ];
task = equation;
answer = r1;
end
