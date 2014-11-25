for i=0:4
    fwdEuler(i+1) = myeuler(0,1,@ivp,2^i,1)
    bwdEuler(i+1) = implicitEuler(0,1,@ivp,2^i,1) 
    trap(i+1) = trapezoidal(0,1,@ivp,2^i,1)
    h(i+1) = 2^(-i)
end

%loglog(h,fwdEuler,'k')
loglog(h, bwdEuler, 'k')
%loglog(h, trap, 'k')
