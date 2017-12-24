function coef=GenerateRobast() %генерирование коэффициентов для задания на робастную устойчивость
coef=zeros(1,9);
for i=1:4
    coef(i)=randi([1,8]);
end
coef(9)=randi([0,1]);
coef(5)=coef(1)+1;
coef(6)=coef(2)+1;
if coef(9)==0
    coef(7)=coef(3);
else coef(7)=coef(3)+1;
coef(8)=coef(4)+1;
end

