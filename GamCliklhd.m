function y=GamCliklhd(x,n,t)
l=length(n);
%x=[scale, shape]
a=x(1); %shape (k)
b=x(2); %scale (theta)
y=0;
%because of minimizing> neg likelhd
y = -sum(log(gamcdf(t,n*a,b)-gamcdf(t,(n+1)*a,b)));
end