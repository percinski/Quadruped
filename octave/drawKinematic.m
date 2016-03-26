function drawKinematic(l, w, a, b, c, fiL1, fiR1, fiL2, fiR2)
R1=[l/2 w/2 0]';
R2=[-l/2, w/2 0]';
L1=[l/2 -w/2 0]';
L2=[-l/2, -w/2 0]';


plot3([-l/2 l/2],[0 0],[0 0],'Color','r','Linewidth',3);
set(gca(), "zdir", "reverse");
set(gca(), "xdir", "reverse");
axis equal;
hold on;
plot3([R1(1) L1(1)],[R1(2) L1(2)],[R1(3) L1(3)],'Color','r','Linewidth',3);
plot3([R2(1) L2(1)],[R2(2) L2(2)],[R2(3) L2(3)],'Color','r','Linewidth',3);

%%%%%%%%%% L1 leg %%%%%%%%%
R_01=Rx(-pi/2)*Ry(pi/2); %rotation matrix to global CS

%% segment a
fi2= fiL1(1);
d2=0;
a2=a;
psi2=-pi/2;
T_12=TransMatrix(fi2,d2,a2,psi2);
L1a=T_12*[0 0 0 1]'; 
L1a=L1a(1:end-1);
L1a=L1+R_01*L1a;
plot3([L1(1) L1a(1)],[L1(2) L1a(2)],[L1(3) L1a(3)],'Color','r','Linewidth',3);

%% segment b
fi3= fiL1(2);
d3=0;
a3=b;
psi3=0;
T_23=TransMatrix(fi3,d3,a3,psi3);
L1b=T_12*T_23*[0 0 0 1]'; 
L1b=L1b(1:end-1);
L1b=L1+R_01*L1b;
plot3([L1a(1) L1b(1)],[L1a(2) L1b(2)],[L1a(3) L1b(3)],'Color','r','Linewidth',3);

%% segment c
fi4=fiL1(3);
d4=0;
a4=c;
psi4=0;
T_34=TransMatrix(fi4,d4,a4,psi4);
L1c=T_12*T_23*T_34*[0 0 0 1]'; 
L1c=L1c(1:end-1)
L1c=L1+R_01*L1c;
plot3([L1b(1) L1c(1)],[L1b(2) L1c(2)],[L1b(3) L1c(3)],'Color','r','Linewidth',3);


%%%%%%%%%% R1 leg %%%%%%%%%
R_01=Rx(-pi/2)*Ry(pi/2); %rotation matrix to global CS

%% segment a
fi2= fiR1(1);
d2=0;
a2=a;
psi2=-pi/2;
T_12=TransMatrix(fi2,d2,a2,psi2);
R1a=T_12*[0 0 0 1]'; 
R1a=R1a(1:end-1);
R1a=R1+R_01*R1a;
plot3([R1(1) R1a(1)],[R1(2) R1a(2)],[R1(3) R1a(3)],'Color','r','Linewidth',3);

%% segment b
fi3= fiR1(2);
d3=0;
a3=b;
psi3=0;
T_23=TransMatrix(fi3,d3,a3,psi3);
R1b=T_12*T_23*[0 0 0 1]'; 
R1b=R1b(1:end-1);
R1b=R1+R_01*R1b;
plot3([R1a(1) R1b(1)],[R1a(2) R1b(2)],[R1a(3) R1b(3)],'Color','r','Linewidth',3);

%% segment c
fi4=fiR1(3);
d4=0;
a4=c;
psi4=0;
T_34=TransMatrix(fi4,d4,a4,psi4);
R1c=T_12*T_23*T_34*[0 0 0 1]'; 
R1c=R1c(1:end-1);
R1c=R1+R_01*R1c;
plot3([R1b(1) R1c(1)],[R1b(2) R1c(2)],[R1b(3) R1c(3)],'Color','r','Linewidth',3);

%%%%%%%%%% L2 leg %%%%%%%%%
R_01=Rx(-pi/2)*Ry(-pi/2); %rotation matrix to global CS

%% segment a
fi2= fiL2(1);
d2=0;
a2=a;
psi2=-pi/2;
T_12=TransMatrix(fi2,d2,a2,psi2);
L2a=T_12*[0 0 0 1]'; 
L2a=L2a(1:end-1);
L2a=L2+R_01*L2a;
plot3([L2(1) L2a(1)],[L2(2) L2a(2)],[L2(3) L2a(3)],'Color','r','Linewidth',3);

%% segment b
fi3= fiL2(2);
d3=0;
a3=b;
psi3=0;
T_23=TransMatrix(fi3, d3, a3, psi3);
L2b=T_12*T_23*[0 0 0 1]'; 
L2b=L2b(1:end-1);
L2b=L2+R_01*L2b;
plot3([L2a(1) L2b(1)],[L2a(2) L2b(2)],[L2a(3) L2b(3)],'Color','r','Linewidth',3);

%% segment c
fi4=fiL2(3);
d4=0;
a4=c;
psi4=0;
T_34=TransMatrix(fi4,d4,a4,psi4);
L2c=T_12*T_23*T_34*[0 0 0 1]'; 
L2c=L2c(1:end-1);
L2c=L2+R_01*L2c;
plot3([L2b(1) L2c(1)],[L2b(2) L2c(2)],[L2b(3) L2c(3)],'Color','r','Linewidth',3);

%%%%%%%%%% R1 leg %%%%%%%%%
R_01=Rx(-pi/2)*Ry(-pi/2); %rotation matrix to global CS

%% segment a
fi2= fiR2(1);
d2=0;
a2=a;
psi2=-pi/2;
T_12=TransMatrix(fi2,d2,a2,psi2);
R2a=T_12*[0 0 0 1]'; 
R2a=R2a(1:end-1);
R2a=R2+R_01*R2a;
plot3([R2(1) R2a(1)],[R2(2) R2a(2)],[R2(3) R2a(3)],'Color','r','Linewidth',3);

%% segment b
fi3= fiR2(2);
d3=0;
a3=b;
psi3=0;
T_23=TransMatrix(fi3,d3,a3,psi3);
R2b=T_12*T_23*[0 0 0 1]'; 
R2b=R2b(1:end-1);
R2b=R2+R_01*R2b;
plot3([R2a(1) R2b(1)],[R2a(2) R2b(2)],[R2a(3) R2b(3)],'Color','r','Linewidth',3);

%% segment c
fi4=fiR2(3);
d4=0;
a4=c;
psi4=0;
T_34=TransMatrix(fi4,d4,a4,psi4);
R2c=T_12*T_23*T_34*[0 0 0 1]'; 
R2c=R2c(1:end-1);
R2c=R2+R_01*R2c;
plot3([R2b(1) R2c(1)],[R2b(2) R2c(2)],[R2b(3) R2c(3)],'Color','r','Linewidth',3);

endfunction
