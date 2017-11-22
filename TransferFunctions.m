%генерирует задания о нахождении передаточной функции по заданному ДУ (в
%операторной форме и в изображениях Лапласа) и о нахождении ДУ по заданным
%передаточным функциям в операторной форме
function [task, answer] = TransferFunctions()
[coefY, coefU, coefV] = GenerateCoefficients(3); %генерирует коэффициенты для уравнения
n = randi([1,2]); %выбирается тип задания (что дано - ДУ или передаточная функция)
type = randi([1,2]); %выбирается, в каком виде искать передаточную функцию, если дано ДУ
if n == 1
    if type == 1
        task = ['1)\mbox{Найдите передаточную функцию в операторной форме:}' SaveDifferentialEquation(coefY, coefU, coefV)];
    end;
    if type == 2
        task = ['1)\mbox{Найдите передаточную функцию в изображениях Лапласа:}' SaveDifferentialEquation(coefY, coefU, coefV)];
    end;
    answer = FindTransferFunction(coefY, coefU, coefV, type);
end;
if n == 2 
    task = ['1)\mbox{Найдите ДУ по заданной передаточной функции:}' FindTransferFunction(coefY, coefU, coefV, 1)];
    answer = SaveDifferentialEquation(coefY, coefU, coefV);
end;
end


