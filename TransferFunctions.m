%генерирует задания о нахождении передаточной функции по заданному ДУ (в
%операторной форме и в изображениях Лапласа) и о нахождении ДУ по заданным
%передаточным функциям в операторной форме
function [task, answer] = TransferFunctions()
[coefY, coefU, coefV] = GenerateCoefficients(3); %генерирует коэффициенты для уравнения
n = randi([1,2]); %выбирается тип задания (что дано - ДУ или передаточная функция)
type = randi([1,2]); %выбирается, в каком виде искать передаточную функцию, если дано ДУ
if n == 1
task = SaveDifferentialEquation(coefY, coefU, coefV);
answer = FindTransferFunction(coefY, coefU, coefV, type);
end;
if n == 2 
task = FindTransferFunction(coefY, coefU, coefV, 1);
answer = SaveDifferentialEquation(coefY, coefU, coefV);
end;
end


