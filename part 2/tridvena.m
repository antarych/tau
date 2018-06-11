function [task, answer] = tridvena()
coef = Generate312();
k=coef(1);
b=coef(2);
d=coef(3);
w=sqrt(d);
a=4*k/(d*b);
u=-4/a^2;
if u<0
    g=[' функция устойчива']
else
    g=[' функция неустойчива']
end
if d==1
    r=['W_{l}(p)=\frac{' num2str(k) '}{(p^3+' num2str(b) 'p^2+p)}']
else
    r=['W_{l}(p)=\frac{' num2str(k) '}{(p^3+' num2str(b) 'p^2+' num2str(d) 'p)}']
end
s =[' A=' num2str(a) ', w=' num2str(w) g ]
equation = ['В типовой структурной схеме нелинейной системы нелинейное звено имеет характеристику идеального реле с заданной высотой $c=\pi$ линейная часть имеет переда точную функцию' '$\\' r ' $' 'и задающее воздействие g=' num2str(coef(4)) '. Исследовать автоколебания'];
task = equation;
answer = s;
end