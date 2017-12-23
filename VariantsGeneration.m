
[task1, answer1] = TransferFunctions(); %1-�� ������� - ����� ������������ ������� (� ����������� ��� � �����. �������) ��� ����� �� �� ������������ �������
task = ['\item ' task1];
answer = ['\item ' answer1];

fullTask = task;
fullAnswer = answer;

n = randi([1,4]); %2-�� ������� - ����� ������� ��� ���������� ������� ��� ��������� �������������� ��� ������� �������
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

n = randi([1,4]); %3-� ������� �� ������������
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
