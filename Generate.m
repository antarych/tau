function coef=Generate()
coef=zeros(1,7);
coef(1)=1;
for i=2:7
    coef(i)=randi([2,10]);
end
end

