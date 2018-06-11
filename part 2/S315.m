function [task, answer] = S315()
coef = Generate315();
k=coef(1);
b=coef(2);
c=coef(3);
w=sqrt(c);
h=coef(4);
d=1-4*(b*c/(4*k));
a=sqrt(-1+sqrt(d));
u=-4/a^2;
if d<0
    g=[' автоколебаний нет']
else
    g=[' автоколебания есть']
    if u<0
        g=[' функция устойчива']
    else
        g=[' функция неустойчива']
    end
end
if c==1
    r=['W_{l}(p)=\frac{' num2str(k) '}{(p^3+' num2str(b) 'p^2+p)}']
else
    r=['W_{l}(p)=\frac{' num2str(k) '}{(p^3+' num2str(b) 'p^2+' num2str(c) 'p)}']
end
s =[' A=' num2str(a) ', w=' num2str(w) g ]
equation = ['В типовой структурной схеме нелинейной системы нелинейное звено имеет релейную характеристику с зоной нечувствительности с заданной высотой $c=\pi$ и зоной нечувствительности a=1, линейная часть имеет передаточную функцию' '$\\' r ' $' 'и задающее воздействие g=' num2str(coef(4)) '. Исследовать автоколебания'];
task = equation;
answer = g;
end