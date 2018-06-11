
if exist('.\tasks', 'dir') ~= 7
    mkdir('.\tasks');
end;

[task1, answer1] = TrFuncFromDiffEq(); %1-ое задание - найти передаточную функцию дискретной системы (в операторной или в z-изображениях) или найти разностное ур-е по передаточной функции
task1 = ['\item ' task1 '.'];
answer1= ['\item ' answer1];    

n = randi([1,3]); %2-ое задание - найти ZT-изображение
switch n
    case 1
        [task2, answer2] = ZTrans67(); 
    case 2
        [task2, answer2] = ZTrans69(); 
    case 3
        [task2, answer2] = AIM(); 
    case 4
        [task2, answer2] = ZVU();
    case 5
        [task2, answer2] = SHIM();
    case 6
        [task2, answer2] = TransXG613();
end;

task2 = ['\item ' task2 '.'];
answer2= ['\item ' answer2];   

n = randi([1,3]); %3-ое задание - устойчивость
switch n
    case 1
        [task3, answer3] = Stabiliti71(); 
    case 2
        [task3, answer3] = TrStability72(); 
    case 3
        [task3, answer3] = TSSU(); 
    case 4
        [task3, answer3] = StabilitySHIM();
end;

task3 = ['\item ' task3 '.'];
answer3= ['\item ' answer3];   

n = randi([1,3]); %4-ое задание - метод гармонической линеаризации
switch n
    case 1
        [task4, answer4] = tridvena(); 
    case 2
        [task4, answer4] = S315();
    case 3
        [task4, answer4] = S324();
end;

task4 = ['\item ' task4 '.'];
answer4= ['\item ' answer4];   

n = randi([1,4]); %5-ое задание - устойчивость  нелинейных  систем
switch n
    case 1
        [task5, answer5] = S401(); 
    case 2
        [task5, answer5] = S404(); 
    case 3
        [task5, answer5] = S405(); 
    case 4
        [task5, answer5] = S406(); 
end;

task5 = ['\item ' task5 '.'];
answer5= ['\item ' answer5];   


n = randi([1,4]); %6-ое задание - адаптивные системы
switch n
    case 1
        [task6, answer6] = S1101(); 
    case 2
        [task6, answer6] = S1102(); 
    case 3
        [task6, answer6] = S1131(); 
    case 4
        [task6, answer6] = S1143(); 
end;

task6 = ['\item ' task6 '.'];
answer6= ['\item ' answer6]; 

SaveLaTeX(task1, task2, task3, task4, task5, task6, 'task.tex');
SaveLaTeX(answer1, answer2, answer3, answer4, answer5, answer6, 'answer.tex');

