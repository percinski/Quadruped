% Rz.m
% octave function builds rotation matrix
% around Z-axis
%
% author: Mateusz Perciński
% 
%	INPUT:	fi	-	1x1	-	rotation angle
%
%	OUTPUT:	Rz	-	3x3	-	rotation matrix
%

function [R]=Rz(fi)

	R=[cos(fi) -sin(fi) 0;
		sin(fi) cos(fi) 0;
		0 0 1];	

endfunction
