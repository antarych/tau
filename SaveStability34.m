function [task, answer] = SaveStability34()
coef = Generate();
coef(1)=1;
if coef(2)*(coef(3)+1)*(coef(4)+coef(6))-coef(2)*coef(2)*(coef(5)+coef(7))-coef(1)*(coef(4)+coef(6))*(coef(4)+coef(6))>0
    g='Система устойчивая';
else g='Система неустойчивая';
end
eq=['\frac{s^2+' num2str(coef(6)) 's+' num2str(coef(7)) '}{s^4+' num2str(coef(2)) 's^3+' num2str(coef(3)) 's^2+' num2str(coef(4)) 's+' num2str(coef(5)) '}'];
equation = ['Исследовать устойчивость замкнутой системы по критерию Найквиста при следующей передаточной функции в разомкнутом состоянии:$\\' 'W(s) =' eq '$' ];
task = equation;
H = tf([coef(6) coef(7)],[coef(2) coef(3) coef(4) coef(5)]);
nyquist(H);
print('-dpng', ...
fullfile('.\', 'tasks', ...
               ['nyquist', '.png']));
close;
answer = [ g '\begin{figure}[htbp]\includegraphics[width=90mm]{nyquist.png}\end{figure}' ];
end