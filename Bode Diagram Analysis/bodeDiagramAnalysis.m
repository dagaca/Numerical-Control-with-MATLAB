% Ýleri yol transfer fonksiyonunu tanýmla
numerator = [25 25];
denominator = conv([1 2 0], [1 2 16]);
sys1 = tf(numerator, denominator);

% Bode diyagramýný çizdir
figure(1);
bode(sys1);
grid on;

% PM, GM, GMd, wg, wp deðerlerini hesapla
[mag, ph, w] = bode(sys1);

% PM ve wg hesapla
a2 = abs(1 - mag);
a3 = find(a2 == min(a2));
b1 = [mag(a3-1) mag(a3) mag(a3+1)]';
b2 = [ph(a3-1) ph(a3) ph(a3+1)]';
b3 = [w(a3-1) w(a3) w(a3+1)]';
PM = 180 + interp1(b1, b2, 1);
wg = interp1(b1, b3, 1);

% GM ve wp hesapla
c1 = abs(180 - abs(ph));
c2 = find(c1 == min(c1));
d1 = [mag(c2-1) mag(c2) mag(c2+1)]';
d2 = [ph(c2-1) ph(c2) ph(c2+1)]';
d3 = [w(c2-1) w(c2) w(c2+1)]';
GM = 1 / (interp1(d2, d1, -180));
wp = interp1(d2, d3, -180);
GMd = 20 * log10(GM);