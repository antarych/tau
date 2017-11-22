slCharacterEncoding('UTF-8');
t = '';
a = '';
[task1, answer1] = TransferFunctions(); %1-�� ������� - ����� ������������ ������� (� ����������� ��� � �����. �������) ��� ����� �� �� ������������ �������
task = [t task1];
answer = [a '1)\\' answer1];

fullTask = task;
fullAnswer = answer;

n = randi([1,4]); %2-�� ������� - ����� ������� ��� ���������� ������� ��� ��������� �������������� ��� ������� �������
if n == 1
    [task1, answer1] = WeightFunction();
    task = [fullTask '\\\\' task1];
    answer = [fullAnswer '\\\\2)' answer1];
end;
if n == 2
    [task1, answer1] = StepResponse();
    task = [fullTask '\\\\' task1];
    answer = [fullAnswer '\\\\2)' answer1];
end;
if n == 3
    [task1, answer1] = FrequencyFunction();
    task = [fullTask '\\\\' task1];
    answer = [fullAnswer '\\\\2)' answer1];
end;
if n == 4
    [task1, answer1] = SysReaction();
    task = [fullTask '\\\\' task1];
    answer = [fullAnswer '\\\\2)' answer1];
end;


fullTask = task;
fullAnswer = answer;

n = randi([1,4]); %3-� ������� �� ������������
if n == 1
    [task1, answer1] = SaveStability();
    task = [fullTask '\\\\' task1];
    answer = [fullAnswer '\\\\3)\\' answer1];
end;
if n == 2
    [task1, answer1] = SaveStability32();
    task = [fullTask '\\\\' task1];
    answer = [fullAnswer '\\\\3)\\' answer1];
end;
if n == 3
    [task1, answer1] = SaveStability33();
    task = [fullTask '\\\\' task1];
    answer = [fullAnswer '\\\\3)\\' answer1];
end;
if n == 4
    [task1, answer1] = SaveStability34();
    task = [fullTask '\\\\' task1];
    answer = [fullAnswer '\\\\3)\\' answer1];
end;


SaveLaTeX(task, 'task.tex');
SaveLaTeX(answer, 'answer.tex');
