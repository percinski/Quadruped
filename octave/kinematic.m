% kinematic
function kinematic()
close all;
l=100;
w=50;
a=20;
b=50;
c=50;
drawKinematic(l, w, a, b, c);
endfunction


function drawKinematic(l, w, a, b, c)
R1=[l/2 -w/2 0]';
R2=[-l/2, -w/2 0]';
L1=[l/2 w/2 0]';
L2=[-l/2, w/2 0]';


plot3([-l/2 l/2],[0 0],[0 0],'Color','r','Linewidth',3);
set(gca(), "zdir", "reverse");
set(gca(), "xdir", "reverse");
axis equal;
hold on;
plot3([R1(1) L1(1)],[R1(2) L1(2)],[R1(3) L1(3)],'Color','r','Linewidth',3);
plot3([R2(1) L2(1)],[R2(2) L2(2)],[R2(3) L2(3)],'Color','r','Linewidth',3);

%%%%%%%%%% R1 leg %%%%%%%%%
R_01=Rx(-pi/2)*Ry(pi/2); %rotation matrix to global CS

%% segment a
fi2= -pi/2;
d2=0;
a2=a;
psi2=-pi/2;

T_12=TransMatrix(fi2, d2, a2, psi2);
R1a=T_12*[0 0 0 1]'; 
R1a=R1a(1:end-1);
R1a=R1+R_01*R1a;
plot3([R1(1) R1a(1)],[R1(2) R1a(2)],[R1(3) R1a(3)],'Color','r','Linewidth',3);

%% segment b
fi3= pi/4;
d3=0;
a3=b;
psi3=0;

T_23=TransMatrix(fi3, d3, a3, psi3);
R1b=T_12*T_23*[0 0 0 1]'; 
R1b=R1b(1:end-1)
R1b=R1+R_01*R1b
plot3([R1a(1) R1b(1)],[R1a(2) R1b(2)],[R1a(3) R1b(3)],'Color','r','Linewidth',3);

%% segment c
fi4=-pi/4;
d4=0;
a4=b;
psi4=0;

T_34=TransMatrix(fi4, d4, a4, psi4);
R1c=T_12*T_23*T_34*[0 0 0 1]'; 
R1c=R1c(1:end-1)
R1c=R1+R_01*R1c
plot3([R1b(1) R1c(1)],[R1b(2) R1c(2)],[R1b(3) R1c(3)],'Color','r','Linewidth',3);

endfunction

function [T]=TransMatrix(fi,d,a,psi)
T=[cos(fi) -cos(psi)*sin(fi) sin(psi)*sin(fi) a*cos(fi);
	sin(fi) cos(psi)*cos(fi) -sin(psi)*cos(fi) a*sin(fi);
	0 sin(psi) cos(psi) d;
	0 0 0 1];	
endfunction

function [R]=Rx(fi)
R=[1 0 0;
0 cos(fi) -sin(fi);
0 sin(fi) cos(fi)];	
endfunction

function [R]=Ry(fi)
R=[cos(fi) 0 sin(fi);
0 1 0;
-sin(fi) 0  cos(fi)];	
endfunction

function [R]=Rz(fi)
R=[cos(fi) -sin(fi) 0;
sin(fi) cos(fi) 0;
0 0 1];	
endfunction
