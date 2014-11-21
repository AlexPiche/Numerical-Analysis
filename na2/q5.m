xx=heuns(0,100,@lorenz,[1,-1,30], 10^(-3))

%plot(xx(:,1),xx(:,3), 'k')

plot(xx(:,2),xx(:,3), 'k')
