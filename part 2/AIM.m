function [ task, answer ] = AIM()

num = randi([1,5]);
denom = zeros([1,2]);

for i = 1:2
    denom(i) = randi([-10,10])/2;
end;
while (denom(1) == denom(2))
    denom(2) = randi([-10, 10])/2;
end;
syms s;


taui = 0.05;
T = 0.1;
Ai = 1;

fullfile('.\', 'tasks', ...
               ['ris1', '.png']);
close;
fullfile('.\', 'tasks', ...
               ['ris2', '.png']);
close;


task = latex(num/expand((s+denom(1))*(s+denom(2))));
task = [ 'В АИМ-системе (рис. 1) АИМ-элемент вырабатывает прямоугольные импульсы длительности $\tau_{\text{и}} = ' num2str(taui) '$ с периодом $T = ' num2str(T) '$ и амплитудой $A_{\text{и}} = ' num2str(Ai) '$. Определить передаточную функцию $W_{\text{п}}*(z)$ дискретной модели (рис. 2) при следующей передаточной функции непрерывной части: $W_{\text{н}}(s) = ' task '$' '\begin{figure}[htbp]\includegraphics[width=90mm]{ris1.png}\captionof{figure}{}\end{figure}\begin{figure}[htbp]\includegraphics[width=90mm]{ris2.png}\captionof{figure}{}\end{figure}' ]; 

syms e z x;

coef = fliplr(coeffs((expand((s+denom(1))*(s+denom(2))*s))));
coef(4) = 0;
[r,p,k] = residue(num, double(coef));


s = z/(z-1);
Rz = 0;
for i=1:3
    if p(i) == 0
        Rz = Rz + s*r(i);
        switch i
            case 1
                num11 = z*r(i);
                denom11 = z - 1;
            case 2
                num12 = z*r(i);
                denom12 = z - 1;
            case 3
                num13 = z*r(i);
                denom13 = z - 1;
        end;
    else 
        a = (p(i)*T);
        splusa = z/(z-exp(sym(a)));
        Rz = Rz + splusa*r(i);
        switch i
            case 1
                num11 = z*r(i);
                denom11 = z-exp(sym(a));
            case 2
                num12 = z*r(i);
                denom12 = z-exp(sym(a));
            case 3
                num13 = z*r(i);
                denom13 = z-exp(sym(a));
        end;
    end;
end;  
answer = Rz;

Rz = 0;
k = solve(taui<=x*T, (x-1)*T<taui, x);
eps = k-taui/T;
for i=1:3
    if p(i) == 0
        Rz = Rz + s*z^(-k)*r(i);
        switch i
            case 1
                num21 = z*z^(-k)*r(i);
                denom21 = z - 1;
            case 2
                num22 = z*z^(-k)*r(i);
                denom22 = z - 1;
            case 3
                num23 = z*z^(-k)*r(i);
                denom23 = z - 1;
        end;
    else 
        a = (p(i)*T);
        splusa = z^(-k)*z*exp(sym(-eps*a))/(z-exp(sym(a)));
        Rz = Rz + splusa*r(i);
        switch i
            case 1
                num21 = z^(-k)*z*exp(sym(eps*a))*r(i);
                denom21 = z-exp(sym(a));
            case 2
                num22 = z^(-k)*z*exp(sym(-eps*a))*r(i);
                denom22 = z-exp(sym(a));
            case 3
                num23 = z^(-k)*z*exp(sym(-eps*a))*r(i);
                denom23 = z-exp(sym(a));
        end;
    end;
end;
%answer = [ '$W_{\text{п}}*(z) = ' latex(simplify(answer) - simplify(Rz)) '$' ];

ans = simplify((num13-num23)/denom23) + simplify((num12-num22)/denom22) + simplify((num11-num21)/denom21);
answer = [ '$W_{\text{п}}*(z) = ' latex(ans) '$' ];
end

