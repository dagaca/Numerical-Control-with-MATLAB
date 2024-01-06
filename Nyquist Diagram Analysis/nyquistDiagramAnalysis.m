% Sistem transfer fonksiyonunu tanýmla
sys1 = tf([1630.53 1222897.5], [1 361.2 0]);

% NYQUIST diyagramýný çizdir
figure(1);
nyquist(sys1);
grid on;
axis([-1.1 0.2 -1.1 1.1]);

% Birim çemberi çizdir
t = linspace(0, 2*pi, 1001);
x = sin(t);
y = cos(t);

hold on;
plot(x, y);
hold off;