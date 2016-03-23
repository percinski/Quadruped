
function Y=legKinematic(X)
	a=20;			% first segment of leg
	b=50;			% second segment of leg
	c=50;			% third segment of leg

	Y(1)=(c*cos(X(2)+X(3))+b*cos(X(2)))*cos(X(1))+a*cos(X(1));
	Y(2)=(c*cos(X(2)+X(3))+b*cos(X(2)))*sin(X(1))+a*sin(X(1))+50;
	Y(3)=-c*sin(X(2)+X(3))-b*sin(X(2))-20;

endfunction

