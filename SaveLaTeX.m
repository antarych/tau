function SaveLaTeX(task, fileName) %сохранение в tex файл
beginning1 = '\documentclass{article}\usepackage[cp1251]{inputenc}';
beginning2 = '\usepackage{amsmath, amssymb, amsfonts, amsthm}';
beginning3 = '\usepackage[T2A]{fontenc}';
beginning4 = '\usepackage[russian]{babel}';
beginningPicture = '\usepackage[pdftex]{graphicx}';
beginning5 = '\begin{document}';
beginning6 = '\noindent';
beginning7 = '\begin{enumerate}';
ending1 = '\end{enumerate}';
ending2 = '\end{document}';
if exist('.\tasks', 'dir') ~= 7
    mkdir('.\tasks');
end;
file = ['.\tasks\' fileName];
fileID = fopen(file,'w');
fprintf(fileID,'%s\n',beginning1);
fclose(fileID);
fileID=fopen(file,'at+');
fprintf(fileID,'%s\n',beginning2); 
fprintf(fileID,'%s\n',beginning3);
fprintf(fileID,'%s\n',beginning4);
fprintf(fileID,'%s\n',beginningPicture);
fprintf(fileID,'%s\n',beginning5);
fprintf(fileID,'%s\n',beginning6);
fprintf(fileID,'%s\n',beginning7);
fprintf(fileID,'%s\n',task);
fprintf(fileID,'%s\n',ending1);
fprintf(fileID,'%s\n',ending2);
fclose(fileID);
end