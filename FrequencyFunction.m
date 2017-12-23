function [task, answer] = FrequencyFunction()
n = randi([4,4]);
switch n
    case 1
    task = 'Определить частотную передаточную функцию, вещественную, мнимую, амплитудную, фазовую частотные функции и переходную функцию пропорционального звена.';
    answe = '$y(t) = ku(t)\\W(s) = k\\W(jw) = k\\U(w) = k\\V(w) = 0\\A(w) = k\\\phi(w) = 0\\h(t)=k$';
    answer = strrep(answe, 'w', '\omega');

    case 2
    task = 'Определить частотную передаточную функцию, вещественную, мнимую, амплитудную, фазовую частотные функции и переходную и весовую функции интегрирующего звена.';
    Ws = latex(sym('W(s) = k/s'));
    Wjw = latex(sym('W(jw) = -(jk)/s'));
    Vw = latex(sym('V(w) = -k/w'));
    Aw = latex(sym('A(w) = k/w'));
    phi = latex(sym('phi(w) = -pi/2'));
    h = latex(sym('h(t)=kt'));
    answ = ['$py = ku\\' Ws '\\' Wjw '\\U(w) = 0\\' Vw '\\' Aw '\\' phi '\\' h '\\w(t)=k$'];
    answe = strrep(answ, 'phi', '\phi');
    answer = strrep(answe, 'w', '\omega');

    case 3
    task = 'Определить частотную передаточную функцию, вещественную, мнимую, амплитудную, фазовую частотные функции форсирующего звена.';
    Ws = latex(sym('W(s) = k(Ts+1)'));
    Wjw = latex(sym('W(jw) = k(Tjw + 1)'));
    Vw = latex(sym('V(w) = kTw'));
    Aw = latex(sym('A(w) = k*sqrt((Tw)^2+1)'));
    phi = latex(sym('phi(w) = arctg(Tw)'));
    answ = ['$y = k(Tp + 1)u\\' Ws '\\' Wjw '\\U(w) = k\\' Vw '\\' Aw '\\' phi '$'];
    answe = strrep(answ, 'phi', '\phi');
    answer = strrep(answe, 'w', '\omega');

    case 4
    task = 'Определить частотную передаточную функцию, вещественную, мнимую, амплитудную, фазовую частотные функции, весовую и переходную функции апериодического звена.';
    Ws = latex(sym('W(s) = k/(Ts+1)'));
    Wjw = latex(sym('W(jw) = k/(Tjw + 1)'));
    Vw = latex(sym('V(w) = -(kTw)/(1 + w^2*T^2)'));
    Uw = latex(sym('V(w) = k/(1 + w^2*T^2)'));
    Aw = latex(sym('A(w) = k/sqrt((Tw)^2+1)'));
    phi = latex(sym('phi(w) = -arctg(Tw)'));
    hw = latex(sym('k/T*e^(-t/T)'));
    answ = ['$(Tp + 1)y = ku\\' Ws '\\' Wjw '\\' Uw '\\' Vw '\\' Aw '\\' phi '\\h(t) = w(t) = ' hw '$'];
    answe = strrep(answ, 'phi', '\phi');
    answer = strrep(answe, 'w', '\omega');
end;
end

