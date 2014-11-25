function root = newton(p0, f, f1, tol, maxiter)
% f = @rootfct
% f1 = @rootfctd
% f1 is the derivative of f i.e. rootfctd

format long;
i=1;

%use the built in fsvole function to find the 'precise'

%of the function f
rt = fsolve(f,0.5)

p = p0

while abs(p-rt)>tol

    p = p0 - f(p0)/f1(p0)

    %use the newton method to calcute the new estimation
    %f1 is the derivative of f
    
    if abs(p-rt)<tol
        disp('iterations')
        disp([i'])
    end
    i =  i + 1;
    p0 = p
end



