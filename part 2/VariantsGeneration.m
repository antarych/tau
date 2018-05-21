
if exist('.\tasks', 'dir') ~= 7
    mkdir('.\tasks');
end;

[task1, answer1] = TrFuncFromDiffEq(); %1-ое задание - найти передаточную функцию дискретной системы (в операторной или в z-изображениях) или найти разностное ур-е по передаточной функции
task1 = ['\item ' task1 '.'];
answer1= ['\item ' answer1];    

n = randi([1,2]); %2-ое задание - найти ZT-изображение
switch n
    case 1
        [task2, answer2] = ZTrans67(); 
    case 2
        [task2, answer2] = ZTrans69(); 
end;
task2 = ['\item ' task2 '.'];
answer2= ['\item ' answer2];   

SaveLaTeX(task1, task2, '0', '0', 'task.tex');
SaveLaTeX(answer1, answer2, '0', '0', 'answer.tex');

