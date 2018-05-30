function [ task, answer ] = TrStability72()

denom = zeros([1,5]);
denom(1) = 1;
for i = 2:5
    rand = randi([0,1]);
    if rand == 0
        denom(i) = randi([1,15])/10;
    end;
    if rand == 1
        denom(i) = -randi([1,15])/10;
    end;
end;
num = zeros([1,4]);
for i = 1:4
    num(i) = randi([-15,15])/10;
end;
denom = [1, 0.5, 1, 1, 0.02];
num = [1, -0.21, -0.835, -0.01];
syms z;
task = [ 'Исследовать устойчивость замкнутой системы при условии, что передаточная функция разомкнутой системы имеет следующий вид:\\$W*(z) = ' latex(simplify(vpa(num(1))*z^3+vpa(num(2))*z^2+vpa(num(3))*z+vpa(num(4)))/(z^4+vpa(denom(2))*z^3+vpa(denom(3))*z^2+vpa(denom(4))*z+vpa(denom(5)))) '$' ];
task = strrep(task, '.0', '');
coeffs = zeros([1,5]);
coeffs(1) = denom(1);
for i = 2:5
    coeffs(i) = denom(i) + num(i-1);
end;
juri1 = coeffs;
fljuri1 = fliplr(juri1);
juri2 = zeros([1,4]);
for i = 1:4
    juri2(i) = juri1(i)-fljuri1(i)*(juri1(5)/juri1(1));
end;
juri2fl = fliplr(juri2);
juri3 = zeros(1,3);
for i = 1:3
    juri3(i) = juri2(i)-juri2fl(i)*(juri2(4)/juri2(1));
end;
juri3fl = fliplr(juri3);
juri4 = zeros(1,2);
for i = 1:2
    juri4(i) = juri3(i)-juri3fl(i)*(juri3(3)/juri3(1));
end;
answer = 'Неустойчива';
if (juri1(1)>0 && juri2(1) > 0 && juri3(1) > 0 && juri4(1) > 0)
    answer = 'Устойчива';
end;

end

