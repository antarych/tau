function [ task, answer ] = TransXG613()

num1 = randi([1,5]);
denom1 = zeros([1,2]);
num2 = randi([1,5]);
T = randi([1,5])/10;
for i=1:2
    rand1 = randi([0,1]);
    if rand1 == 0
        denom1(i) = randi([1,5]);
    end;
    if rand1 == 1
        denom1(i) = randi([-5,-1]);
    end;
end;
while (abs(denom1(1)) == abs(denom1(2)))
    denom1(2) = randi([1,5]);
end;
num1 = 5;
denom1 = [1, 2];
num2 = 3;
T = 0.1;
syms s;
denominator = expand((s+denom1(1))*(s+denom1(2)));
fullfile('.\', 'tasks', ...
               ['ris6', '.png']);
close;
task = [ 'Определить передаточную функцию $W_{xg}*(z)$ дискретной системы (Рис. 1) при периоде T = $' num2str(T) '$и передаточных функциях:\\ $W_{1}(p) = ' latex(num1/denominator) '\\W_{2}(p) = ' latex(s+num2) '$\begin{figure}[htbp]\includegraphics[width=90mm]{ris6.png}\captionof{figure}{}\end{figure}' ];
[r, p, k] = residue(num1, double(fliplr(coeffs(denominator))));
syms z e;
s = z/(z-1);
Rz = 0;
answ = [s, s];
for i=1:2
    if p(i) == 0
        Rz = Rz + s*r(i);
        answ(i) = s*r(i);
    else 
        a = vpa(p(i)*T);
        splusa = z/(z-e^a);
        Rz = Rz + splusa*r(i);
        answ(i) = splusa*r(i);
    end;
end;
ans1 = Rz;
[r, p, k] = residue([num1, num1*num2], double(fliplr(coeffs(denominator))));
syms z e;
s = z/(z-1);
Rz = 0;
for i=1:2
    if p(i) == 0
        Rz = Rz + s*r(i);
        answ(i) = s*r(i);
    else 
        a = vpa(p(i)*T);
        splusa = z/(z-e^a);
        Rz = Rz + splusa*r(i);
        answ(i) = splusa*r(i);
    end;
end;
ans2 = Rz;
% [n1, d1] = numden(ans1(1));
% [n2, d2] = numden(ans1(2));
% [n3, d3] = numden(ans2(1));
% [n4, d4] = numden(ans2(2));
% answer = [ '$' latex((simplify(n1*d2+n2*d1)/(d3*d4+expand(n3*d4+n4*d3)))) '$' ];
answer = [ '$W_{xg}*(z) = ' latex((ans1/(1-ans2))) '$' ];
end

