function [task, answer] = Robast()%определение робастной устойчивости
coef = GenerateRobast();
a=zeros(1,4);
b=zeros(1,4);
for i=1:4
    a(i)=coef(i);
end
for i=1:4
    b(i)=coef(i+4);
end
if a(1)*a(2)*b(3)-a(1)*a(1)*b(4)-b(3)*b(3)>0
    if a(1)*b(2)*b(3)-a(1)*a(1)*a(4)-b(3)*b(3)>0
        if b(1)*b(2)*b(3)-b(1)*b(1)*b(4)-a(3)*a(3)>0
            if b(1)*a(2)*a(3)-b(1)*b(1)*b(4)-a(3)*a(3)>0
                f=1;
            else f=0;
            end
        else f=0;
        end
    else f=0;
    end
else f=0;
end
if f==1
    g='Система является робастно устойчивой';
else g='Система не является робастно устойчивой';
end
p='\lambda^{4}+a_{1}\lambda^3+a_{2}\lambda^2+a_{3}\lambda+a_{4}';
if a(3)==b(3)
    eq = [num2str(a(1)) '\leq a_{1}\leq' num2str(b(1)) ', ' num2str(a(2)) '\leq a_{2}\leq' num2str(b(2)) ', ' 'a_{3}=' num2str(a(3)) ', ' num2str(a(4)) '\leq a_{4}\leq' num2str(b(4))];
else
    eq = [num2str(a(1)) '\leq a_{1}\leq' num2str(b(1)) ', ' num2str(a(2)) '\leq a_{2}\leq' num2str(b(2)) ', ' num2str(a(3)) '\leq a_{3}\leq' num2str(b(3)) ', ' num2str(a(4)) '\leq a_{4}\leq' num2str(b(4))];
end
equation = [ 'Исследовать робастную устойчивость системы управления с характеристическим полиномом:$\\' p ' \\ ' eq '$'];
task = equation;
answer = g;
end