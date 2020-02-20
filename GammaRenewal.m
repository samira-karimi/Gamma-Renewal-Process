clc
clear all

n=[3 1 3 1 1 9 2 1 1 5 1 1]; % Number of events
t=25.5*ones(1,12); % Time intervals

lb=[0 0];
ub=[100 100];
x0=[2 1.5];
A=[0 0];
b=[1];
Aeq=[];
beq=[];
[x,fval]=fmincon(@(x)GamCliklhd(x,n,t),[2,2],A,b,Aeq,beq,lb,ub);

x
fval