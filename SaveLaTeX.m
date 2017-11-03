function SaveLaTeX(savedObject, fileName)
beginning = '\documentclass{article}\usepackage{amsmath, amssymb, amsfonts, amsthm, fouriernc}\begin{document}\begin{math} ';
ending = ' \end{math}\end{document}';
newText = [beginning savedObject ending];
fileID = fopen(fileName,'w');
fprintf(fileID,'%s',newText);
fclose(fileID);
end