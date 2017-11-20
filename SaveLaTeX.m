function SaveLaTeX(task, fileName) %сохранение передаточных функций в файл
beginning = '\documentclass{article}\usepackage[utf8]{inputenc}\usepackage{amsmath, amssymb, amsfonts, amsthm, fouriernc}\usepackage[T2A]{fontenc}\usepackage[russian]{babel}\begin{document}\noindent';
ending = ' \end{math}\end{document}';
newText = [beginning '\begin{math}' task ending];
if exist('.\tasks', 'dir') ~= 7
    mkdir('.\tasks');
end;
file = ['.\tasks\' fileName];
fileID = fopen(file,'w');
fprintf(fileID,'%s',newText);
fclose(fileID);
end