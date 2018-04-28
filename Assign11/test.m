#----------STEP-1----------
x = dlmread( 'new.csv', ',',0,0);
k=x(1,1);
if (k==0),
	x_train=(x'(1, 2:end))';
	y_train=(x'(2, 2:end))';
else,
	x_train=(x'(1, :))';
	y_train=(x'(2, :))';
end,
n_train=size(x_train)(1);
o=ones(n_train,1);
X_train=[o,x_train];
#----------STEP-2----------
w=rand(2,1);
#----------STEP-3----------
hold on;
figure(1);
plot(x_train,y_train,'.',x_train,X_train*w,'-');
title ("Plot with w");
