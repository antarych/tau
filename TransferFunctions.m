%���������� ������� � ���������� ������������ ������� �� ��������� �� (�
%����������� ����� � � ������������ �������) � � ���������� �� �� ��������
%������������ �������� � ����������� �����
function [task, answer] = TransferFunctions()
[coefY, coefU, coefV] = GenerateCoefficients(3); %���������� ������������ ��� ���������
n = randi([1,2]); %���������� ��� ������� (��� ���� - �� ��� ������������ �������)
type = randi([1,2]); %����������, � ����� ���� ������ ������������ �������, ���� ���� ��
if n == 1
task = SaveDifferentialEquation(coefY, coefU, coefV);
answer = FindTransferFunction(coefY, coefU, coefV, type);
end;
if n == 2 
task = FindTransferFunction(coefY, coefU, coefV, 1);
answer = SaveDifferentialEquation(coefY, coefU, coefV);
end;
end


