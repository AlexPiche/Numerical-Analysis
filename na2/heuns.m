%predictor y(t+h) = y(t) + h* (dy(t)/dt)
%corrector y(t+h) = y(t) + (h/2)*((dy(t)/dt) + (dy(t+h)/dt))
%t_n+1 = t_n+h



function [y t] = heuns(a,b,fct,ic,h)
    N = (b-a)/h;
    y(1,:) = ic;
    t(1) = a


    for i=1:N
        t(i+1) = t(i) + h;
        g = fct(t(i), y(i,:));
        l = y(i,:) + h * g;
        y(i+1,:) = y(i,:) + (h/2) * (g + fct(t(i+1),l));
    end;

    
