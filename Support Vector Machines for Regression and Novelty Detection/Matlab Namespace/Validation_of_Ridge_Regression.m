%this is an example of the validation of parameter gamma in ridge
%regression using the data for homework 5. 

%% Load the data
clear all
load('/Users/zacharymontoya/Services/Git/Machine-Learning/Support Vector Machines for Regression and Novelty Detection/Matlab Namespace/data.mat')

%% Split it in 80% training, 20% test (give or take)
Xtr=Xtrain(1:64,:);
Xval=Xtrain(65:end,:);
ytr=ytrain(1:64);
yval=ytrain(65:end);

%% Setup the parameters to sweep
gamma=logspace(-10,1,1000);
I=eye(19);

%% Ridge regression training and validation 
for i=1:length(gamma)
    w=pinv(Xtr'*Xtr+gamma(i)*I)*Xtr'*ytr; %training
    y=w'*Xval';                           %validation
    E(i)=mean((yval-y').^2);              %validation error
    
end

%% training again with the best gamma
[e,ind]=min(E);
w=pinv(Xtr'*Xtr+gamma(ind)*I)*Xtr'*ytr; 

%% Test
y_output=w'*Xtest';

%% Plot everything
figure(1)
loglog(gamma,E,'Linewidth',2)
xlabel('\gamma','FontSize',16)
ylabel('MSE(\gamma)','FontSize',16)
title('Validation mean squared error (MSE)','FontSize',16)
 
figure(2)
plot(ytest,'Linewidth',2)
hold on
plot(y_output,'Linewidth',2)
plot(ftest,'Linewidth',2)
xlabel('n (time)','FontSize',16)
ylabel('y[n]','FontSize',16)
legend('y_{test}','Reg. output','f_{test}','FontSize',16)
title('Test results','FontSize',16)
hold off