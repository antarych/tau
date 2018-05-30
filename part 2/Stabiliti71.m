function [ task, answer ] = Stabiliti71()
a0 = 1;
a1 = randi([-50,50])/10;
a2 = randi([-50,50])/10;
a3 = randi([-50,50])/10;
syms z;
task = [ '»сследовать устойчивость дискретной системы управлени€, у которой характеристическое уравнение имеет следующий вид:\\$' latex(z^3 + vpa(a1)*z*z + vpa(a2)*z + vpa(a3)) ' = 0$' ];
task = strrep(task, '.0', '');
c0 = a0 - a1 + a2 - a3;
c1 = 3*(a0 + a3) - a1 - a2;
c2 = a0 - a1 + a2 - a3;
c3 = a0 + a1 + a2 + a3;
roots = solve(c0*z^3 + c1*z*z + c2*z + c3);
answer = '”стойчива';
for i = 1:length(roots)
    if double(roots(i)) < 0
        answer = 'Ќеустойчива';
        break;
    end;
end;
end

