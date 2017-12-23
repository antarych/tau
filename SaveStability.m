function [task, answer] = SaveStability()
coef = Generate();
coef(1)=1;
if coef(2)*coef(3)*coef(4)-coef(2)*coef(2)*coef(5)-coef(1)*coef(4)*coef(4)>0
    g='Система устойчивая';
else g='Система неустойчивая';
end
eq = ['\lambda^4' '+' num2str(coef(2)) '\lambda^3' '+' num2str(coef(3)) '\lambda^2' '+' num2str(coef(4)) '\lambda' '+' num2str(coef(5))];
equation = ['Исследовать устойчивость системы управления, характеристическое уравнение которой имеет вид:$\\' eq ' = 0$' ];
task = equation;
answer = g;
end

