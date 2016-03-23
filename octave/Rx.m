% Rx.m
% octave function builds rotation matrix
% around X-axis
%
% author: Mateusz Perciński
% 
%	INPUT:	fi	-	1x1	-	rotation angle
%
%	OUTPUT:	R	-	3x3	-	rotation matrix
%

function [R]=Rx(fi)

	R=[1 0 0;
		0 cos(fi) -sin(fi);
		0 sin(fi) cos(fi)];	

endfunction
