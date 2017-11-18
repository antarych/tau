function [task, answer] = WeightFunction()
[coefY, coefU, coefV] = GenerateCoefficients(2);
coefU(1) = randi([0,10]);
coefU(2) = randi([0,10]);
coefU(3) = 0;
firstFullStr = FindTransferFunction(coefY, coefU, coefV, 2); %получение передаточной функции в изображениях Лапласа (условие)
secondFullStr = strrep(firstFullStr, '_{1}', '');
L = strtok(secondFullStr, ';');
syms s t;
newL1 = strrep(L,'\\W(s) = \frac', '');
newL2 = strrep(newL1,'\left', '');
newL3 = strrep(newL2,'\right', '');
newL4 = strrep(newL3,'\,', ' *');
newL5 = regexprep(newL4,'}{', ')/(');
newL6 = regexprep(newL5,'}', ')');
newL7 = regexprep(newL6,'{', '(');
newL8 = sym(strrep(newL7,'\', '')); %убираем всё лишнее из строки, да, вот так вот долго
task = ['\\W(s) = ' latex(simplify(newL8))];
weightFunction = ilaplace(newL8);
answer = ['\\w(t) = ' latex(simplify(weightFunction))];
end

