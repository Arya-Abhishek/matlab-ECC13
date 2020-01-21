fs = 100;
T = 10;
x = [-2*T/fs:2*T];
y = [zeros(1,1.5*T*fs), ones(1, T*fs+1), zeros(1,1.5*T*fs)];
plot (x, y);

t = -T/2:1/fs:T/2;
k = 0;

for f=-T/2:1/fs:T/2 k=k+1;
    X(k) =trapz(t, exp(-2*j*pi*f*t));
end

f=-T/2:1/fs:T/2;
plot(f,X);
plot(f,abs(X));
plot(f,angle(X));
%axis([-0.5 0.5 -4 4])
    

axis([-0.5 0.5 -4 4]);






