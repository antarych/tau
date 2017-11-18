function [coefY, coefU, coefV] = GenerateCoefficients(maxVal)
maxDerivative = randi([2,maxVal]); 
n = maxDerivative + 1;
coefY = zeros(1, n);
coefU = zeros(1, n);
coefV = zeros(1, n);
for i = 1:n %��������  � ���������� �������� � �������������� ��� ������ (U,V) � ������ (Y)
    coefY(i) = randi([0,10]);
    coefU(i) = randi([0,10]);
    coefV(i) = randi([0,10]);
end
end

