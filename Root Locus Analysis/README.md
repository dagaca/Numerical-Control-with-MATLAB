# Root Locus Analysis
Bu MATLAB projesi, bir sistem transfer fonksiyonunun karakteristik eşitliğinin kökeğrilerini görselleştirmek için kullanılmaktadır.

## Matematiksel İşlemler ve Karakteristik Eşitlik
Verilen karakteristik eşitlik aşağıdaki gibidir:

![karakteristikeşitlik](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/eb152f7f-4206-4535-8aad-ebe242ee2c4c)


Karakteristik eşitlik için sadeleştirme adımı:

![sadelestirme](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/c373ecf0-15bf-4bf7-a12b-9daca6b31395)


## MATLAB Kodu ve Grafik
```matlab
% Sistem transfer fonksiyonunu tanımla
numerator = [10];
denominator = [1, 20, 5, 0];
sys = tf(numerator, denominator);

% Kök yerleştirmeyi görselleştir
figure(1);
rlocus(sys);
grid on;
```
![grafik](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/c40eec5a-7c23-4170-9ba1-cea42f5295a2)


## Sistem Kökleri ve Kararlılık
- Sistemde toplamda üç adet kök bulunmaktadır ve bu kökler sırasıyla -19.7, -0.253 ve 0'dır.
- Sistemin kazancı 0 < K < 10 aralığındadır. Bu aralıkta sistem kararlıdır.
