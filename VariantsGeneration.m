
[task1, answer1] = TransferFunctions(); %1-ое задание - найти передаточную функцию (в операторной или в изобр. Лапласа) или найти ДУ по передаточной функции
task = ['\item ' task1];
answer = ['\item ' answer1];

fullTask = task;
fullAnswer = answer;

n = randi([1,4]); %2-ое задание - найти весовую или переходную функцию или частотные характеристики или реакция системы
if n == 1
    [task1, answer1] = WeightFunction();
    task = [fullTask '\\\item ' task1];
    answer = [fullAnswer '\\\item ' answer1];
end;
if n == 2
    [task1, answer1] = StepResponse();
    task = [fullTask '\\\item ' task1];
    answer = [fullAnswer '\\\item ' answer1];
end;
if n == 3
    [task1, answer1] = FrequencyFunction();
    task = [fullTask '\\\item ' task1];
    answer = [fullAnswer '\\\item ' answer1];
end;
if n == 4
    [task1, answer1] = SysReaction();
    task = [fullTask '\\\item ' task1];
    answer = [fullAnswer '\\\item ' answer1];
end;


fullTask = task;
fullAnswer = answer;

n = randi([1,4]); %3-е задание на устойчивость
if n == 1
    [task1, answer1] = SaveStability();
    task = [fullTask '\\\item ' task1];
    answer = [fullAnswer '\\\item ' answer1];
end;
if n == 2
    [task1, answer1] = SaveStability32();
    task = [fullTask '\\\item ' task1];
    answer = [fullAnswer '\\\item ' answer1];
end;
if n == 3
    [task1, answer1] = SaveStability33();
    task = [fullTask '\\\item ' task1];
    answer = [fullAnswer '\\\item ' answer1];
end;
if n == 4
    [task1, answer1] = SaveStability34();
    task = [fullTask '\\\item ' task1];
    answer = [fullAnswer '\\\item ' answer1];
end;


SaveLaTeX(task, 'task.tex');
SaveLaTeX(answer, 'answer.tex');
