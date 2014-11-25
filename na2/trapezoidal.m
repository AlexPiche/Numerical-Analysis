
function sln = trapezoidal(a, b, fct, N, init)
    
    % a and b are endpoints
    
    % fct of the form y' = f(y,t)

    h = (b-a)/N;
    t(1) = a;
    w(1) = init;


 

    for i=1:N
        t(i+1) = t(i) + h;
        w(i+1) = w(i) + (h/2)*(fct(t(i),w(i))+ fct(t(i+1),w(i)+h*fct(t(i),w(i))));
    end

sln=abs(w(N+1)-(1/101))
return







