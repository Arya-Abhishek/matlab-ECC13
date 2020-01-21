%% array tutorial 
marksStudent = [
    24, 44, 36;
    52, 57, 68;
    66, 53, 69;
    85, 40, 86;
    15, 47, 25;
    79, 72, 82;
    ];

mechMarks = [36, 76, 73, 72 ,28, 91];

% Note in order to append mechMarks we need to take transpose 
% by using apostrophe like a'
%Fourier transform of Rectangular pulse

clc
clear all
close all

a = input('Enter width of pulse: ');
t = input('Enter range of pulse: ');

x = rectpuls(t, a);

figure(1)
plot(t, x)
axis([-10 10 0 2])

