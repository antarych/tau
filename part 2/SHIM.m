function [ task, answer ] = SHIM()

coefNum = zeros([1,2]);
coefDen = zeros([1,2]);

for i=1:2
    rand1 = randi([0,1]);
    rand2 = randi([0,1]);
    if rand1 == 0
        coefNum(i) = randi([1,5]);
    end;
    if rand1 == 1
        coefNum(i) = randi([-5,-1]);
    end;
    if rand2 == 0
        coefDen(i) = randi([1,5]);
    end;
    if rand2 == 1
        coefDen(i) = randi([-5,-1]);
    end;
end;
while (abs(coefDen(1)) == abs(coefDen(2)))
    coefDen(2) = randi([1,5]);
end;
T = randi([1,5])/10;
A = randi([10,15]);
xi = randi([1,5])/10;
syms s;
denominator = expand((s+coefDen(1))*(s+coefDen(2)));
[r, p, k] = residue(coefNum, double(fliplr(coeffs(denominator))));
Wn = latex((s*coefNum(1)+coefNum(2))/(denominator));
fullfile('.\', 'tasks', ...
               ['ris5', '.png']);
close;
task = [ '� ���-������� ���������� ���-������� ������������ ������������������ ������������� ��������� � �������� ���������� ��������� $T = ' num2str(T) '$, ���������� $A_{\text{�}} = ' num2str(A) '$, ������������� ��������� $\chi = ' num2str(xi) '$. ���������� ������������ ������� $W_{\text{�}}*(z)$ ���������� ������ (���. 1) ��� ��������� ������������ �������: $W_{\text{�}}(s) = ' Wn '$\begin{figure}[htbp]\includegraphics[width=90mm]{ris5.png}\captionof{figure}{}\end{figure}' ];
syms z e;
s = z/(z-1);
Rz = 0;
for i=1:2
    if p(i) == 0
        Rz = Rz + s*r(i);
    else 
        a = vpa(p(i)*T);
        splusa = z/(z-e^a);
        Rz = Rz + splusa*r(i);
    end;
end;
answer = [ '$W_{\text{�}}*(z) = ' latex(Rz*xi*A*T) '$'];
end

