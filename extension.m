P = imread("foto2.jpg");
[nreg,ncol,nplanos] = size(P)
P = rgb2gray(P);
%imshow(P);
Q = P;
p1 = 40;
p2 = 190;
for i1 =1:nreg
	for j1=1:ncol
		if ((P(i1,j1)<= p1) || (P(i1,j1) >= p2));
			Q(i1,j1) = 0;
		else
			%a = 3
			Q(i1,j1) = (P(i1,j1) - p1)*(255/(p2-p1));
		end
	end
end
imshow(Q);
