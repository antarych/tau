%генерирует задания о нахождении передаточной функции по заданному ДУ (в
%операторной форме и в изображениях Лапласа) и о нахождении ДУ по заданным
%передаточным функциям в операторной форме
[coefY, coefU, coefV] = GenerateCoefficients(); %генерирует коэффициенты для уравнения
n = randi([1,2]); %выбирается тип задания
if n == 1
SaveDifferentialEquation(coefY, coefU, coefV, 'task.tex');
FindTransferFunction(coefY, coefU, coefV, 'answers.tex');
end;
if n == 2
SaveDifferentialEquation(coefY, coefU, coefV, 'answers.tex');
FindTransferFunction(coefY, coefU, coefV, 'task.tex');
end;


