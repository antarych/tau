function [tf] = SysReaction() %���������� � �������������� ������ ������� ������� �� ������� ������
[coefY, coefU, coefV] = GenerateCoefficients(2);
coefU(1) = randi([0,10]);
coefU(2) = randi([0,10]);
coefU(3) = 0;
firstFullStr = FindTransferFunction(coefY, coefU, coefV, 2); %��������� ������������ ������� � ������������ ������� (�������)
tf = RemoveUseless(firstFullStr);
newtf = strrep(tf, 's^2', '-w');
finaltf = strrep(newtf, 's', 'jw');
tf = finaltf;
end

