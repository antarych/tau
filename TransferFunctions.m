%���������� ������� � ���������� ������������ ������� �� ��������� �� (�
%����������� ����� � � ������������ �������) � � ���������� �� �� ��������
%������������ �������� � ����������� �����
function [task, answer] = TransferFunctions()
[coefY, coefU, coefV] = GenerateCoefficients(3); %���������� ������������ ��� ���������
n = randi([1,2]); %���������� ��� ������� (��� ���� - �� ��� ������������ �������)
type = randi([1,2]); %����������, � ����� ���� ������ ������������ �������, ���� ���� ��
if n == 1
    if type == 1
        task = ['1)\mbox{������� ������������ ������� � ����������� �����:}' SaveDifferentialEquation(coefY, coefU, coefV)];
    end;
    if type == 2
        task = ['1)\mbox{������� ������������ ������� � ������������ �������:}' SaveDifferentialEquation(coefY, coefU, coefV)];
    end;
    answer = FindTransferFunction(coefY, coefU, coefV, type);
end;
if n == 2 
    task = ['1)\mbox{������� �� �� �������� ������������ �������:}' FindTransferFunction(coefY, coefU, coefV, 1)];
    answer = SaveDifferentialEquation(coefY, coefU, coefV);
end;
end


