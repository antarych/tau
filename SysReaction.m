function [task, answer] = SysReaction() %определите в установившемся режиме реакцию системы на входной сигнал
l1 = randi([1,6]);
l2 = randi([1,6]);
m = randi([1,6]);
d = randi([1,30])/10;
n = randi([1,10])/10;
v = randi([1,30])/10;
vv = v;
v = sprintf('%.1f',v);
% l1 = 1;
% l2 = 4;
% m = 1;
% n = 0.2;
% v = 2;
% d = 3;

syms s t;
while d >= (1/n)
    dd = d-0.1;
    d = dd;
end;
D = d;
d = sprintf('%.1f',d);
numerator = sym(l1*(s + l2));
denominator = (s+m)*(n^2*s^2+n*s+1);
Ws = latex(simplify(numerator/denominator));
ch = randi([1,2]); %sin or cos
t = ['W(s) = ' Ws];
if ch == 1
    task = [t '\\u = ' v '\cos(' d 't)'];
end;
if ch == 2
    task = [t '\\u = ' v '\sin(' d 't)'];
end;
numerator = sqrt((l1*D)*(l1*D) + l2*l2);
denominator1 = sqrt(D*D + m*m);
denominator2 = (1 - (n*n*D*D))*(1 - (n*n*D*D));
denominator3 = (n*D)*(n*D);
denominator = denominator1*sqrt(denominator2+denominator3);
A = roundn(numerator/denominator, -2);
phi = roundn(atan(l1*D/4)-atan(D)-atan(n*D/(1 - (n*n*D*D))), -2);
V = vv*A;
V = sprintf('%.1f',V);
Phi = sprintf('%.1f',phi);
if (phi >= 0)
    if ch == 1
        answer = ['\\u = ' V '\cos(' d 't + ' Phi ')'];
    end;
    if ch == 2
        answer = ['\\u = ' V '\sin(' d 't + ' Phi ')'];
    end;
end;
if (phi < 0)
    if ch == 1
        answer = ['\\u = ' V '\cos(' d 't' Phi ')'];
    end;
    if ch == 2
        answer = ['\\u = ' V '\sin(' d 't' Phi ')'];
    end;
end;
end

