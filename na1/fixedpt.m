function root = fixedpt(p0,g,f,tol,maxiter)

%find the fixed pt
%where p0= initial guess
%g = @fct
%f = @rootfct
%tol = error
format long;
i=1;

rt = fsolve(f, 0.5);

p = p0;

while abs(p-rt) > tol
    p = g(p0);

    if abs(p-rt) < tol
        % if the diff. between the 2 points is smaller than
        % the tolerance we stop the process and report the results
        disp('                              iterations');
        disp([i']);
    end
    %otherwise we update p0 and i
    i = i + 1;
    p0 = p;
end
end
