function coef=GenerateKrit()%генерирование коэффициентов для задания на критическое запаздывание
coef=zeros(1,3);
coef(1)=randi([2,9]);
coef(2)=randi([2,9])/10;
coef(3)=randi([0,1]);
if coef(3)==0
    coef(1)=1+coef(1)/10;
else coef(1)=coef(1);
end
