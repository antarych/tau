
if exist('.\tasks', 'dir') ~= 7
    mkdir('.\tasks');
end;

[task1, answer1] = TrFuncFromDiffEq(); %1-�� ������� - ����� ������������ ������� ���������� ������� (� ����������� ��� � z-������������) ��� ����� ���������� ��-� �� ������������ �������
task1 = ['\item ' task1 '.'];
answer1= ['\item ' answer1];    

SaveLaTeX(task1, '0', '0', '0', 'task.tex');
SaveLaTeX(answer1, '0', '0', '0', 'answer.tex');

