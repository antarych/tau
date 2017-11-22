function [task, answer] = SaveStability33()
coef = Generate();
coef(1)=1;
if coef(2)*(coef(3)+1)*(coef(4)+coef(6))-coef(2)*coef(2)*(coef(5)+coef(7))-coef(1)*(coef(4)+coef(6))*(coef(4)+coef(6))>0
    g='Система устойчивая';
else g='Система неустойчивая';
end
eq=['\frac{s^2+' num2str(coef(6)) 's+' num2str(coef(7)) '}{s^4+' num2str(coef(2)) 's^3+' num2str(coef(3)) 's^2+' num2str(coef(4)) 's+' num2str(coef(5)) '}'];
equation = ['3)\mbox{Исследовать устойчивость замкнутой системы при следующей передаточной функции разомкнутой системы:}' eq '' ];
task = equation;
answer = g;
end