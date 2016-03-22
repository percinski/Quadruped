% test
function test()

l=100;
w=50;
a=20;
b=50;
c=50;

R1=[l/2 -w/2 0]';
R2=[-l/2, -w/2 0]';
L1=[l/2 w/2 0]';
L2=[-l/2, w/2 0]';

plot3([-l/2 l/2],[0 0],[0 0],'Color','r','Linewidth',3);
axis equal;
hold on;
plot3([R1(1) L1(1)],[R1(2) L1(2)],[R1(3) L1(3)],'Color','r','Linewidth',3);
plot3([R2(1) L2(1)],[R2(2) L2(2)],[R2(3) L2(3)],'Color','r','Linewidth',3);

%% R1 leg
R_12=Rx(pi-pi/6);
R_23=Ry(pi/4);
R_34=Ry(-pi/2);
R1a=R1+R_12*[0 0 a]';
R1b=R1+R_12*([0 0 a]'+R_23*[0 0 b]');
R1c=R1+R_12*([0 0 a]'+R_23*([0 0 b]'+R_34*[0 0 c]'));

plot3([R1(1) R1a(1)],[R1(2) R1a(2)],[R1(3) R1a(3)],'Color','r','Linewidth',3);
plot3([R1a(1) R1b(1)],[R1a(2) R1b(2)],[R1a(3) R1b(3)],'Color','r','Linewidth',3);
plot3([R1b(1) R1c(1)],[R1b(2) R1c(2)],[R1b(3) R1c(3)],'Color','r','Linewidth',3);

%% L1 leg
R_12=Rx(pi+pi/6);
R_23=Ry(pi/4);
R_34=Ry(-pi/2);
L1a=L1+R_12*[0 0 a]';
L1b=L1+R_12*([0 0 a]'+R_23*[0 0 b]');
L1c=L1+R_12*([0 0 a]'+R_23*([0 0 b]'+R_34*[0 0 c]'));

plot3([L1(1) L1a(1)],[L1(2) L1a(2)],[L1(3) L1a(3)],'Color','r','Linewidth',3);
plot3([L1a(1) L1b(1)],[L1a(2) L1b(2)],[L1a(3) L1b(3)],'Color','r','Linewidth',3);
plot3([L1b(1) L1c(1)],[L1b(2) L1c(2)],[L1b(3) L1c(3)],'Color','r','Linewidth',3);

%% R2 leg
R_12=Rx(pi-pi/6);
R_23=Ry(-pi/4);
R_34=Ry(pi/2);
R2a=R2+R_12*[0 0 a]';
R2b=R2+R_12*([0 0 a]'+R_23*[0 0 b]');
R2c=R2+R_12*([0 0 a]'+R_23*([0 0 b]'+R_34*[0 0 c]'));

plot3([R2(1) R2a(1)],[R2(2) R2a(2)],[R2(3) R2a(3)],'Color','r','Linewidth',3);
plot3([R2a(1) R2b(1)],[R2a(2) R2b(2)],[R2a(3) R2b(3)],'Color','r','Linewidth',3);
plot3([R2b(1) R2c(1)],[R2b(2) R2c(2)],[R2b(3) R2c(3)],'Color','r','Linewidth',3);

%% L1 leg
R_12=Rx(pi+pi/6);
R_23=Ry(-pi/4);
R_34=Ry(pi/2);
L2a=L2+R_12*[0 0 a]';
L2b=L2+R_12*([0 0 a]'+R_23*[0 0 b]');
L2c=L2+R_12*([0 0 a]'+R_23*([0 0 b]'+R_34*[0 0 c]'));

plot3([L2(1) L2a(1)],[L2(2) L2a(2)],[L2(3) L2a(3)],'Color','r','Linewidth',3);
plot3([L2a(1) L2b(1)],[L2a(2) L2b(2)],[L2a(3) L2b(3)],'Color','r','Linewidth',3);
plot3([L2b(1) L2c(1)],[L2b(2) L2c(2)],[L2b(3) L2c(3)],'Color','r','Linewidth',3);
endfunction

function [R]=Rx(fi)
R=[1 0 0;
0 cos(fi) -sin(fi);
0 sin(fi) cos(fi)];	
endfunction

function [R]=Ry(fi)
R=[cos(fi) 0 -sin(fi);
0 1 0;
sin(fi) 0  cos(fi)];	
endfunction
