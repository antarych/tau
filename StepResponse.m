function [task, answer] = StepResponse()
[coefY, coefU, coefV] = GenerateCoefficients(2);
coefU(1) = randi([0,10]);
coefU(2) = randi([0,10]);
coefU(3) = 0;
firstFullStr = FindTransferFunction(coefY, coefU, coefV, 2); %��������� ������������ ������� � ������������ ������� (�������)
tf = RemoveUseless(firstFullStr);
task = ['����� ���������� �������:$\\W(s) = ' latex(simplify(tf)) '$'];
syms s 
temp = simplify(simplify(tf)/s);
stepResponse = latex(simplify(ilaplace(temp)));
answer = ['$h(t) = ' stepResponse '$'];
end

