function [ tf ] = RemoveUseless(firstFullStr) %убираем все лишнее из строки для получения одной передаточной функции (условие в задании №2)
secondFullStr = strrep(firstFullStr, '_{1}', ''); %да-да, вот так вот бестолково и костыльно
L = strtok(secondFullStr, ';');
syms s t;
newL1 = strrep(L,'W(s) = \frac', '');
newL2 = strrep(newL1,'\left', '');
newL3 = strrep(newL2,'\right', '');
newL4 = strrep(newL3,'\,', ' *');
newL5 = regexprep(newL4,'}{', ')/(');
newL6 = regexprep(newL5,'}', ')');
newL7 = regexprep(newL6,'{', '(');
tf = sym(strrep(newL7,'\', '')); 
end

