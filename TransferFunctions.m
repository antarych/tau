%���������� ������� � ���������� ������������ ������� �� ��������� �� (�
%����������� ����� � � ������������ �������) � � ���������� �� �� ��������
%������������ �������� � ����������� �����
[coefY, coefU, coefV] = GenerateCoefficients(); %���������� ������������ ��� ���������
n = randi([1,2]); %���������� ��� �������
if n == 1
SaveDifferentialEquation(coefY, coefU, coefV, 'task.tex');
FindTransferFunction(coefY, coefU, coefV, 'answers.tex');
end;
if n == 2
SaveDifferentialEquation(coefY, coefU, coefV, 'answers.tex');
FindTransferFunction(coefY, coefU, coefV, 'task.tex');
end;


