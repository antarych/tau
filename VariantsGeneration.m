t = '';
a = '';
[task1, answer1] = TransferFunctions(); %1-ое задание - найти передаточную функцию (в операторной или в изобр. Лапласа) или найти ДУ по передаточной функции
task = [t '1)' task1];
answer = [a '1)' answer1];

fullTask = task;
fullAnswer = answer;

[task1, answer1] = WeightFunction();
task = [fullTask '\\\\2)' task1];
answer = [fullAnswer '\\\\2)' answer1];

fullTask = task;
fullAnswer = answer;

SaveLaTeX(task, 'task.tex');
SaveLaTeX(answer, 'answer.tex');
