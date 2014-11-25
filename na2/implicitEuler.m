function sln = implicitEuler(a, b, fct, N, init)
    
    % a and b are endpoints
    % fct of the form y' = f(y,t)

    h = (b-a)/N;
    t(1) = a;
    w(1) = init;



    for i=1:N
        %Rewrite y1= y0 + h(-100y1/(1+100t1))
        %As y1 = y0/(1+(100h/(1+100t1))
        t(i+1) = t(i) + h;
        w(i+1) = w(i) / (1+fct(-h,t(i+1)));
    end


sln=abs(w(N+1)-(1/101))


return




