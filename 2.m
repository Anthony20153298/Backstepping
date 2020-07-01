x1=linspace(-2,2,7);
y1=linspace(-2,2,7);
[x,y]=meshgrid(x1,y1);
a=1;
k=1;
xdot2=(-2-a*cos(x))*(x+a*sin(x)+y)-x-k*(y+2*x+a*sin(x));
xdot1=x+a*sin(x)+y;
quiver(x1,y1,xdot1,xdot2)