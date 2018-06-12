function [ task, answer ] = ZVU( )

alpha = randi([1,6])*0.5;
beta = randi([1,10])/10;

num = randi([1,5]);
denom = zeros([1,2]);
for i = 1:2
    denom(i) = randi([-10,10])/2;
end;
while (denom(1) == denom(2))
    denom(2) = randi([-10, 10])/2;
end;

if (alpha ~= 1 && alpha+beta ~=1)
        task = [ '$u[(l+1)T]-u[lT] = ' num2str(alpha+beta) 'e[(l+1)T] - ' num2str(alpha) 'e[lT]$' ];
else if (alpha+beta == 1)
        task = [ '$u[(l+1)T]-u[lT] = e[(l+1)T] - ' num2str(alpha) 'e[lT]$' ];
    else 
        task = [ '$u[(l+1)T]-u[lT] = ' num2str(alpha+beta) 'e[(l+1)T] - e[lT]$' ];
    end;
end;

fullfile('.\', 'tasks', ...
               ['ris3', '.png']);
close;
fullfile('.\', 'tasks', ...
               ['ris4', '.png']);
close;

syms z s T e;

Wh = latex(num/expand((s+denom(1))*(s+denom(2))));
t = 'В цифровой системе управления (Рис. 1) ЦВУ реализует алгоритм управления ';
t2 = ', ЦАП - фиксатор нулевого порядка. \\Определить передаточные функции $W_{p}*(z)$ и $W_{\text{п}}*(z)$ дискретной модели (Рис. 2) при передаточной функции $W_{\text{н}}(s) = ';
task = [ t task t2 Wh '$' '\begin{figure}[htbp]\includegraphics[width=90mm]{ris4.png}\captionof{figure}{}\end{figure}\begin{figure}[htbp]\includegraphics[width=90mm]{ris3.png}\captionof{figure}{}\end{figure}' ];
task = strrep(task, '1.0', '');
task = strrep(task, '.0', '');

Wp = (vpa(alpha+beta)*z-1)/(vpa(alpha)*z-1);

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
                num1 = z*r(i);
                denom1 = z - 1;
            case 2
                num2 = z*r(i);
                denom2 = z - 1;
            case 3
                num3 = z*r(i);
                denom3 = z - 1;
        end;
    else 
        a = (p(i)*T);
        splusa = z/(z-exp(sym(a)));
        Rz = Rz + splusa*r(i);
        switch i
            case 1
                num1 = z*r(i);
                denom1 = z-exp(sym(a));
            case 2
                num2 = z*r(i);
                denom2 = z-exp(sym(a));
            case 3
                num3 = z*r(i);
                denom3 = z-exp(sym(a));
        end;
    end;
end;  
Zt = simplify(((z-1)*num1)/(z*denom1))+simplify(((z-1)*num2)/(z*denom2))+simplify(((z-1)*num3)/(z*denom3));
answer = [ '$W_{p}*(z) = ' latex(Wp) '\\W_{\text{п}}*(z) = ' latex(Zt) '$' ];
answer = strrep(answer, '1.0', '');
answer = strrep(answer, '.0', '');
end

