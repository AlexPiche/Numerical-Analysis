function root = secant(p0, p1,f, tol, maxiter)

format long;
i = 2;
rt = fsolve(f, 0.5)
%find the 'precise' root with the built in fsolve function in matlab

q0=f(p0);
q1=f(p1);

p = p0


while abs(p-rt) >= tol
    %compute p by the secant method
    p = p1 -(q1*(p1-p0))/(q1-q0);



    
    i = i + 1;
    %update the values so we can do an other iterations
    p0 = p1;
    q0 = q1;
    p1 = p;
    q1 = f(p);
end
    %if the absolute difference with the root find with fsolve is smaller 
    %%than the tolerance display the results
    disp('iterations');
    disp([i',p']);
end

