function [task, answer] = SaveStability32() %����������� ������������ ������� ����������, ������� ����������� ��������� ����������
coef = Generate();
coef(1)=1;
if coef(2)*coef(3)*coef(4)-coef(2)*coef(2)*coef(5)-coef(1)*coef(4)*coef(4)>0
    g='������� ����������';
else g='������� ������������';
end
eq = ['\frac{d^4y}{dt^4}' '+' num2str(coef(2)) '\frac{d^3y}{dt^3}' '+' num2str(coef(3)) '\frac{d^2y}{dt^2}' '+' num2str(coef(4)) '\frac{dy}{dt}' '+' num2str(coef(5))];
equation = ['����������� ������������ ������� ����������, ������� ����������� ��������� ����������:$\\' eq ' =' num2str(coef(6)) '\frac{du}{dt} +' num2str(coef(7)) '$'];
task = equation;
answer = g;
end