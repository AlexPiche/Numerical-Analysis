function root = bisection(a, b, f, tol)
    % a and b are the endpoints of the interval
% f = @rootfct
% tol stands for the tolerance of the estimate
format long;
i=1;
FA = f(a)
p = a
%use the fsole function to get a 'precise' estime of the root
rt = fsolve(f, 0.5)



while abs(p-rt)>tol
    p = a + (b-a)/2;

    %once we compute p we need to compute f(p) to know the sign
    %and then update a or b and iterate one more time
    FP = f(p);


    
    if FP == 0 | abs(p-rt) < tol
        disp('iterations')
        disp([i'])
    end

    i = i + 1;
    
    if FA * FP > 0
        %if f(a) and f(p) is of the same sign we replace a with p
        %our interval thus get tighter around the root 
        a=p;
        FA=FP;
    else
        %if the sign of f(a) and f(p) is not the same we replace b with p
        b=p
    end
end

