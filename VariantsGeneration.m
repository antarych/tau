
if exist('.\tasks', 'dir') ~= 7
    mkdir('.\tasks');
end;

[task1, answer1] = TransferFunctions(); %1-ое задание - найти передаточную функцию (в операторной или в изобр. Лапласа) или найти ДУ по передаточной функции
task1 = ['\item ' task1 '.'];
answer1= ['\item ' answer1];
    

n = randi([1,4]); %2-ое задание - найти весовую или переходную функцию или частотные характеристики или реакция системы
switch n
    case 1 
        [task2, answer2] = WeightFunction();
        task2 = ['\item ' task2 '.'];
        answer2 = ['\item ' answer2];

    case 2
        [task2, answer2] = StepResponse();
        task2 = ['\item ' task2 '.'];
        answer2 = ['\item ' answer2];
    case 3
        [task2, answer2] = FrequencyFunction();
        task2 = ['\item ' task2 '.'];
        answer2 = ['\item ' answer2];
    case 4
        [task2, answer2] = SysReaction();
        task2 = ['\item ' task2 '.'];
        answer2 = ['\item ' answer2];
end;


n = randi([1,5]); %3-е задание на устойчивость
switch n
    case 1
        [task3, answer3] = SaveStability();
        task3 = ['\item ' task3 '.'];
        answer3 = ['\item ' answer3];
    case 2
        [task3, answer3] = SaveStability32();
        task3 = ['\item ' task3 '.'];
        answer3 = ['\item ' answer3];
    case 3
        [task3, answer3] = SaveStability33();
        task3 = ['\item ' task3 '.'];
        answer3 = ['\item ' answer3];
    case 4
        [task3, answer3] = SaveStability34();
        task3 = ['\item ' task3 '.'];
        answer3 = ['\item ' answer3];
    case 5
        [task3, answer3] = Mikhilov();
        task3 = ['\item ' task3 '.'];
        answer3 = ['\item ' answer3];
end;

n = randi([1,2]); %4-ое задание - робастная устойчивость или критическое запаздывание
switch n
    case 1
        [task4, answer4] = Robast();
        task4 = ['\item ' task4 '.'];
        answer4 = ['\item ' answer4];
    case 2
        [task4, answer4] = Krit();
        task4 = ['\item ' task4 '.'];
        answer4 = ['\item ' answer4];  
end;

SaveLaTeX(task1, task2, task3, task4, 'task.tex');
SaveLaTeX(answer1, answer2, answer3, answer4, 'answer.tex');
