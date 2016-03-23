% Ry.m
% octave function builds rotation matrix
% around Y-axis
%
% author: Mateusz Perciński
% 
%	INPUT:	fi	-	1x1	-	rotation angle
%
%	OUTPUT:	R	-	3x3	-	rotation matrix
%

function [R]=Ry(fi)

	R=[cos(fi) 0 sin(fi);
		0 1 0;
		-sin(fi) 0  cos(fi)];
	
endfunction
