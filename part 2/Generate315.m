function coef=Generate315()
coef=zeros(1,4);
m=randi([1,9]);
coef(1)=m/10;
coef(2)=randi([2,4]);
coef(3)=randi([1,4]);
coef(4)=randi([0,1]);
