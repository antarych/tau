
[task1, answer1] = TransferFunctions(); %1-�� ������� - ����� ������������ ������� (� ����������� ��� � �����. �������) ��� ����� �� �� ������������ �������
task = ['\item ' task1];
answer = ['\item ' answer1];

fullTask = task;
fullAnswer = answer;

n = randi([1,4]); %2-�� ������� - ����� ������� ��� ���������� ������� ��� ��������� �������������� ��� ������� �������
switch n
    case 1 
        [task1, answer1] = WeightFunction();
        task = [fullTask '\\\item ' task1];
     answer = [fullAnswer '\\\item ' answer1];

    case 2
        [task1, answer1] = StepResponse();
        task = [fullTask '\\\item ' task1];
        answer = [fullAnswer '\\\item ' answer1];
    case 3
        [task1, answer1] = FrequencyFunction();
        task = [fullTask '\\\item ' task1];
        answer = [fullAnswer '\\\item ' answer1];
    case 4
        [task1, answer1] = SysReaction();
        task = [fullTask '\\\item ' task1];
        answer = [fullAnswer '\\\item ' answer1];
end;

fullTask = task;
fullAnswer = answer;

n = randi([1,5]); %3-� ������� �� ������������
switch n
    case 1
        [task1, answer1] = SaveStability();
        task = [fullTask '\\\item ' task1];
        answer = [fullAnswer '\\\item ' answer1];
    case 2
        [task1, answer1] = SaveStability32();
        task = [fullTask '\\\item ' task1];
        answer = [fullAnswer '\\\item ' answer1];
    case 3
        [task1, answer1] = SaveStability33();
        task = [fullTask '\\\item ' task1];
        answer = [fullAnswer '\\\item ' answer1];
    case 4
        [task1, answer1] = SaveStability34();
        task = [fullTask '\\\item ' task1];
        answer = [fullAnswer '\\\item ' answer1];
    case 5
        [task1, answer1] = Mikhilov();
        task = [fullTask '\\\item ' task1];
        answer = [fullAnswer '\\\item ' answer1];
end;

fullTask = task;
fullAnswer = answer;

n = randi([1,2]); %4-�� ������� - ��������� ������������ ��� ����������� ������������
switch n
    case 1
        [task1, answer1] = Robast();
        task = [fullTask '\\\item ' task1];
        answer = [fullAnswer '\\\item ' answer1];
    case 2
        [task1, answer1] = Krit();
        task = [fullTask '\\\item ' task1];
        answer = [fullAnswer '\\\item ' answer1];    
end;

SaveLaTeX(task, 'task.tex');
SaveLaTeX(answer, 'answer.tex');
