function [task, answer] = SaveStability34()
coef = Generate();
coef(1)=1;
if coef(2)*(coef(3)+1)*(coef(4)+coef(6))-coef(2)*coef(2)*(coef(5)+coef(7))-coef(1)*(coef(4)+coef(6))*(coef(4)+coef(6))>0
    g='������� ����������';
else g='������� ������������';
end
eq=['\frac{s^2+' num2str(coef(6)) 's+' num2str(coef(7)) '}{s^4+' num2str(coef(2)) 's^3+' num2str(coef(3)) 's^2+' num2str(coef(4)) 's+' num2str(coef(5)) '}'];
equation = ['3)\mbox{����������� ������������ ��������� ������� �� �������� ��������� ��� ��������� ������������ ������� � ����������� ���������:}' 'W(s) =' eq  ];
task = equation;
answer = g;
end