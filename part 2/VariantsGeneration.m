
if exist('.\tasks', 'dir') ~= 7
    mkdir('.\tasks');
end;

[task1, answer1] = TrFuncFromDiffEq(); %1-ое задание - найти передаточную функцию дискретной системы (в операторной или в z-изображениях) или найти разностное ур-е по передаточной функции
task1 = ['\item ' task1 '.'];
answer1= ['\item ' answer1];    

SaveLaTeX(task1, '0', '0', '0', 'task.tex');
SaveLaTeX(answer1, '0', '0', '0', 'answer.tex');

