%Vaibhav Bisht
%MS, Mechanical Engineering, Cornell University
%Date Posted: 12/26/21

clc
clear all

%Gravity & system parameters
g = 9.81;
m = 1;
l = 0.5;

%State-Space Model
A = [0 1; -g/l 0];
B = [0; 1/(m*l*l)];
C = [1 0];
D = 0;
sys = ss(A, B, C, D);

%Covariance of Process Noise 
Q = 1e-3;

%Sampling Time
Ts = 0.01;

%Covariance of Measurement Noise 
R = 1e-4;