t = '';
a = '';
[task1, answer1] = TransferFunctions(); %1-ое задание - найти передаточную функцию (в операторной или в изобр. Лапласа) или найти ДУ по передаточной функции
task = [t '1)' task1];
answer = [a '1)' answer1];

fullTask = task;
fullAnswer = answer;

n = randi([4,4]); %2-ое задание - найти весовую или переходную функцию или частотные характеристики или реакция системы
if n == 1
    [task1, answer1] = WeightFunction();
    task = [fullTask '\\\\2)\\' task1];
    answer = [fullAnswer '\\\\2)\\' answer1];
end;
if n == 2
    [task1, answer1] = StepResponse();
    task = [fullTask '\\\\2)\\' task1];
    answer = [fullAnswer '\\\\2)\\' answer1];
end;
if n == 3
    [task1, answer1] = FrequencyFunction();
    task = [fullTask '\\\\2)\\' task1];
    answer = [fullAnswer '\\\\2)\\' answer1];
end;
if n == 4
    [task1, answer1] = SysReaction();
    task = [fullTask '\\\\2)\\' task1];
    answer = [fullAnswer '\\\\2)\\' answer1];
end;

fullTask = task;
fullAnswer = answer;

SaveLaTeX(task, 'task.tex');
SaveLaTeX(answer, 'answer.tex');
