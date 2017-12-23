function [task, answer] = Mikhilov()
coef = Generate();
coef(1) = roundn(rand(1), -2);

if coef(2)*coef(3)*coef(4)-coef(2)*coef(2)*coef(5)-coef(1)*coef(4)*coef(4)>0
    g='Система устойчивая';
else g='Система неустойчивая';
end;
for w=0.01:0.01:4.5
    Njw = coef(1)*((w*i)^4)+coef(3)*((w*i)^2)+coef(5)+coef(2)*((w*i)^3)+coef(4)*(w*i);
    re = real(Njw);
    im = imag(Njw);
    plot(re, im, '.');
    hold on;
    grid on;
    xlabel('Re');
    ylabel('Im');
    title('Кривая Михайлова');
end;
print('-dpng', ...
fullfile('.\', 'tasks', ...
               ['mikhailov', '.png']));
close;
eq = [num2str(coef(1)) '\lambda^4' '+' num2str(coef(2)) '\lambda^3' '+' num2str(coef(3)) '\lambda^2' '+' num2str(coef(4)) '\lambda' '+' num2str(coef(5))];
equation = ['Исследовать устойчивость по критерию Михайлова, характеристическое уравнение которой имеет вид:$\\' eq ' = 0$' ];
task = equation;
answer = [ g '\begin{figure}[htbp]\includegraphics[width=90mm]{mikhailov.png}\end{figure}' ];
end

