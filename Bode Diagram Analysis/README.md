# Bode Diagram Analysis
Bu MATLAB projesi, belirli bir ileri yol transfer fonksiyonu için Bode diyagramını çizer ve bu diyagramdan elde edilen değerlere dayanarak sistemin kararlılık analizini gerçekleştirir.

## İleri Yol Transfer Fonksiyonu
Birim geri beslemeli sistem için kullanılan ileri yol transfer fonksiyonu aşağıdaki gibidir:

![ileriyoltf](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/f45d528b-eb34-4031-a8cd-00e413664df1)



## MATLAB Kodu ve Grafik

```matlab
% İleri yol transfer fonksiyonunu tanımla
numerator = [25 25];
denominator = conv([1 2 0], [1 2 16]);
sys1 = tf(numerator, denominator);

% Bode diyagramını çizdir
figure(1);
bode(sys1);
grid on;

% PM, GM, GMd, wg, wp değerlerini hesapla
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
```

![sonuc](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/cbc73ac3-4882-475a-a8d5-dea1ab6f71de)

![grafik](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/40cf0d74-fbd4-43b3-b768-75deef336948)


## Sonuçlar ve Yorumlar
- **Faz Marjı (PM):** 100.4554°
- **Kazanç Marjı (GMd):** 3.9182 dB
- **Kazanç Marjı (GM):** 1.5700
- **Kazanç Frekansı (wg):** 1.0867 rad/s
- **Faz Frekansı (wp):** 4.2208 rad/s


- Sistem faz marjini pozitif bir değere sahiptir ( -180°'den büyük ), bu da faz marjini açısından kararlı olduğunu gösterir.
- Sistem kazanç marjini 0 dB'den küçüktür, bu da kazanç marjini açısından kararlı olduğunu gösterir.
- Sistem, hem faz marjini hem de kazanç marjini açısından kararlıdır, bu iki şartı sağladığı için sistem kararlıdır.
