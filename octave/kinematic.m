% kinematic.m
% octave script contains only geometric data about kinematic model 
% 				calls functions
%
% author: Mateusz Perciński

close all;
l=100;			% length of body
w=50;			% width of body
a=20;			% first segment of leg
b=50;			% second segment of leg
c=50;			% third segment of leg

%%%%%%%%%% give left front leg configuration angles %%%%%%%
[x, fval, info]=fsolve(@legKinematic,[-pi/2; pi/4; -pi/2])

fi2= x(1); 
fi3= x(2);
fi4= x(3);

L1=[fi2 fi3 fi4];

%%%%%%%%%% give left front leg configuration angles %%%%%%%
fi2= -pi/2; 
fi3= pi/4;
fi4=-pi/2;

R1=[fi2 fi3 fi4];

%%%%%%%%%% give left front leg configuration angles %%%%%%%
fi2= -pi/2; 
fi3= -pi/4;
fi4= pi/2;

L2=[fi2 fi3 fi4];

%%%%%%%%%% give left front leg configuration angles %%%%%%%
fi2= -pi/2; 
fi3= -pi/4;
fi4= pi/2;

R2=[fi2 fi3 fi4];

%%%%%%%%%% call drawing function %%%%%%%
drawKinematic(l, w, a,b,c, L1, R1, L2, R2);



