


%%%%% Euler's method %%%%%%%%

function sln = myEuler(a, b, fct, N, init)


    % a and b are endpoints
    % fct of the form y' = f(y,t)

    h = (b-a)/N;
    t(1) = a;
    w(1) = init;


    
    for i=1:N
        w(i+1) = w(i) + h*fct(t(i),w(i));
        t(i+1) = t(i) + h;
    end

    
    sln=abs(w(N+1)-(1/101))
end






