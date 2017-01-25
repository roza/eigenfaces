1;
function alea=alea()
alea = 2*(rand() - 0.5);
endfunction


clf; n=100; a=10; ax=0.1;
for i=1:n
	taille=a*alea();
	V(1,i)= taille*(1+ax*alea());
	V(2,i)= taille*(-1 +ax*alea()); 
	V(3,i)= taille*(ax*alea());
endfor
Moy = sum(V')'/n;
axis([ -a a -a a -a a ])
hold on
V=V-repmat(Moy,1,n); A=V*V';
[P,D]=eig(A)
plot3(V(1,:),V(2,:),V(3,:),"+")
Vp1 = [zeros(3,1) P(:,3)]'
Vp2 = [zeros(3,1) P(:,2)]'
Vp3 = [zeros(3,1) P(:,1)]'
plot3(10*Vp1(:,1), 10*Vp1(:,2), 10*Vp1(:,3), "g")
plot3(10*Vp2(:,1), 10*Vp2(:,2), 10*Vp2(:,3), "r")
plot3(10*Vp3(:,1), 10*Vp3(:,2), 10*Vp3(:,3), "y")


