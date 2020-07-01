function backstepping()
to=0; % start time
tf=10; % end time
t=linspace(to,tf,100);
xo(1)=2; % initial condition
xo(2)=-3;
[t,x] = ode45(@(t,x)nonlinear(t,x),t,xo);
plot(t,x)
xlabel('Time (s)')
ylabel('Amplitude')
grid
function [xdot] = nonlinear(t,x)
% nonlinear model to integrate with ODE45
% parameters
a=1; % parameter nominal value
% aU=-1+4*rand; % -1<a<3 Uncertainties in parameter
k=1;
% backstepping control
u=(-2-a*cos(x(1)))*(x(1)+a*sin(x(1))+x(2))-x(1)-k*(x(2)+2*x(1)+a*sin(x(1)));
%u=0; % no control action
xdot=[x(1)+a*sin(x(1))+x(2); % ideal system
%xdot=[x(1)+aU*sin(x(1))+x(2); % system with uncertainty aU
u];
endfunction
endfunction