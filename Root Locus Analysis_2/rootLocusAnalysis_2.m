% �leri yol transfer fonksiyonunu tan�mla
numerator = [1 0 4];
denominator = conv([1 4 4], [1 11 30]);
sys1 = tf(numerator, denominator);

% K�k e�rilerini �izdir
figure;
rlocus(sys1);
grid on;