% legRevKinematic.m
% octave function calculate reverse kinematic of quadruped leg
% coordinate system set in first joint:
%		Z front direction,
%		Y up direction,
%		X to left of robot,
%
% author: Mateusz Perciński
% 
%	INPUT:	x	-	1x1	-	end of leg x-coordinate
%			y	-	1x1	-	end of leg y-coordinate
%			z	-	1x1	-	end of leg z-coordinate
%			a	-	1x1	-	length of first segment
%			b	-	1x1	-	length of second segment
%			c	-	1x1	-	length of third segment
%
%	OUTPUT:	LEG	-	1x3	-	vector of angles in joints

function LEG=legRevKinematic(x, y, z, a, b, c)

c_fi4=((sqrt(x^2+y^2)-a)^2+z^2-c^2-b^2)/(2*b*c);
s_fi4=-sqrt(1-c_fi4^2);
alfa=atan2(c*s_fi4,(b+c*c_fi4));
fi3=asin(-z/(sqrt((b+c*c_fi4)^2+(c*s_fi4)^2)))-alfa;
c_fi3=cos(fi3);
s_fi3=sin(fi3);
d=c*(c_fi3*c_fi4-s_fi3*s_fi4)+b*c_fi3;
c_fi2=x/(d+a);
s_fi2=y/(d+a);

fi4=atan2(s_fi4,c_fi4);
fi3=atan2(s_fi3,c_fi3);
fi2=atan2(s_fi2,c_fi2);

LEG=[fi2 fi3 fi4];
endfunction
