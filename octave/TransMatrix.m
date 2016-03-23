% TransMatrix.m
% octave function builds transformation matrix
% uses Denavid - Hartenberg notation
% author: Mateusz Perciński
% 
%	INPUT:	fi	-	1x1	-	DH parameter
%			d	-	1x1	-	DH parameter
%			a	-	1x1	-	DH parameter
%			psi	-	1x1	-	DH parameter
%
%	OUTPUT:	T	-	4x4	-	transformation matric

function [T]=TransMatrix(fi,d,a,psi)

	T=[cos(fi) -cos(psi)*sin(fi) sin(psi)*sin(fi) a*cos(fi);
		sin(fi) cos(psi)*cos(fi) -sin(psi)*cos(fi) a*sin(fi);
		0 sin(psi) cos(psi) d;
		0 0 0 1];	

endfunction
