% Sistem transfer fonksiyonu tanımlandı
numerator = [10];
denominator = [1, 20, 5, 0];
sys = tf(numerator, denominator);

% Kök yerleştirme görselleştirildi
figure(1);
rlocus(sys);
grid on;