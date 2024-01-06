# Root Locus Analysis_2
Bu MATLAB projesi, birim geri beslemeli sistemin ileri yol transfer fonksiyonu üzerinden kök eğrilerini görselleştirmektedir.

## İleri Yol Transfer Fonksiyonu

![ileriyoltf](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/cc045937-67be-409a-92eb-4c787aad531a)


## Karakteristik Eşitlik ve Sadeleştirme

![karakteristik eşitlik](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/cbb22ac5-ea99-4ddc-a021-5f228c362856)


## MATLAB Kodu ve Grafik
```matlab
% İleri yol transfer fonksiyonunu tanımla
numerator = [1 0 4];
denominator = conv([1 4 4], [1 11 30]);
sys1 = tf(numerator, denominator);

% Kök eğrilerini çizdir
figure;
rlocus(sys1);
grid on;
```
![grafik](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/7e959197-d801-4f23-ae6b-9d0cbb0ba438)


### Çift Katlı Kök

![çiftkatlıkök](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/08de63db-16ba-4375-9ea9-eff9faf7bc83)

### Kökler ve Sıfırlar

#### Kökler

![kökler](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/774e93ac-444f-4393-96da-8b793117927a)


#### Sıfırlar

![sıfırlar](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/6b921568-074a-48e1-8d7f-b0a92d122abb)


## Sistem Karakteristikleri

- Sistemin -5, -6 noktalarında birer tane kökü bulunmaktadır.
- Sistemin -2 noktasında çift katlı bir kökü vardır. Toplamda 4 kök bulunmaktadır.
- Sistemin 0+2i ve 0-2i noktalarında olmak üzere 2 tane sıfırı vardır.
- Sistem tüm kazanç değerlerinde kararlıdır (0 < K < ∞).
- Sistemde 4 kutup ve 4 kol sayısı bulunmaktadır.
- Asimptot açıları 90° ve 270°’dir.


## Nasıl Başlamalı?
1. Bu repo'yu bilgisayarınıza klonlayın.
   ```bash
   git clone https://github.com/dagaca/Numerical-Control-with-MATLAB.git
   ```
2. MATLAB'e gidin ve rootLocusAnalysis_2.m dosyasını açın.
