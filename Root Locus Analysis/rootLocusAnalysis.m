% Sistem transfer fonksiyonu tan�mland�
numerator = [10];
denominator = [1, 20, 5, 0];
sys = tf(numerator, denominator);

% K�k yerle�tirme g�rselle�tirildi
figure(1);
rlocus(sys);
grid on;