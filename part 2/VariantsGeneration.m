
if exist('.\tasks', 'dir') ~= 7
    mkdir('.\tasks');
end;

[task1, answer1] = TrFuncFromDiffEq(); %1-�� ������� - ����� ������������ ������� ���������� ������� (� ����������� ��� � z-������������) ��� ����� ���������� ��-� �� ������������ �������
task1 = ['\item ' task1 '.'];
answer1= ['\item ' answer1];    

n = randi([1,3]); %2-�� ������� - ����� ZT-�����������
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

%n = randi([1,3]); %3-�� ������� - ������������
n = 2;
switch n
    case 1
        [task3, answer3] = Stabiliti71(); 
    case 2
        [task3, answer3] = TrStability72(); 
end;

task3 = ['\item ' task3 '.'];
answer3= ['\item ' answer3];   

SaveLaTeX(task1, task2, task3, '0', 'task.tex');
SaveLaTeX(answer1, answer2, answer3, '0', 'answer.tex');

