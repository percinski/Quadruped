% kinematic.m
% octave script contains only geometric data about kinematic model 
% 				calls functions
%
% author: Mateusz Perciński

close all;
l=100;			% length of body
w=50;			% width of body
a=20;			% first segment of leg
b=40;			% second segment of leg
c=50;			% third segment of leg

%%%%%%%%%% give left front leg configuration angles %%%%%%%

L1=legRevKinematic(0,-70,-10,a,b,c);

%%%%%%%%%% give left front leg configuration angles %%%%%%%
R1=legRevKinematic(0,-70,-10,a,b,c);

%%%%%%%%%% give left front leg configuration angles %%%%%%%
L2=legRevKinematic(0,-70,-10,a,b,c);

%%%%%%%%%% give left front leg configuration angles %%%%%%%
R2=legRevKinematic(0,-70,-10,a,b,c);

%%%%%%%%%% call drawing function %%%%%%%
drawKinematic(l, w, a,b,c, L1, R1, L2, R2);



