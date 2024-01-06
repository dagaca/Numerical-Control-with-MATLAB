% Sistem transfer fonksiyonu tanýmlandý
numerator = [10];
denominator = [1, 20, 5, 0];
sys = tf(numerator, denominator);

% Kök yerleþtirme görselleþtirildi
figure(1);
rlocus(sys);
grid on;