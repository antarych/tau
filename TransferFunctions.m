%���������� ������� � ���������� ������������ ������� �� ��������� �� (�
%����������� ����� � � ������������ �������) � � ���������� �� �� ��������
%������������ �������� � ����������� �����
function [task, answer] = TransferFunctions()
[coefY, coefU, coefV] = GenerateCoefficients(3); %���������� ������������ ��� ���������
n = randi([1,2]); %���������� ��� ������� (��� ���� - �� ��� ������������ �������)
type = randi([1,2]); %����������, � ����� ���� ������ ������������ �������, ���� ���� ��
switch n
    case 1
        switch type
            case 1
                task = ['������� ������������ ������� � ����������� �����:$\\' SaveDifferentialEquation(coefY, coefU, coefV) '$'];
            case 2
                task = ['������� ������������ ������� � ������������ �������:$\\' SaveDifferentialEquation(coefY, coefU, coefV) '$'];
        end
        answer = [ '$' FindTransferFunction(coefY, coefU, coefV, type) '$'];
    case 2 
        task = ['������� �� �� �������� ������������ �������:$' FindTransferFunction(coefY, coefU, coefV, 1) '$'];
        answer = [ '$' SaveDifferentialEquation(coefY, coefU, coefV) '$'];
end;
end


