function root = fixedpt(p0,g,maxiter)


    %find the fixed pt
%where p0= initial guess
%g = @fct
%f = @rootfct
%tol = error
format long;
i=1;

rt = sqrt(3);

p = p0;


while i < maxiter
    p = g(p0);
    disp('iterations:')
    disp([i'])
    %otherwise we update p0 and i
    i = i + 1;
    p0 = p;
end
end
