# Step Response PD Control
Bu proje, birim geri beslemeli sistemde Proportional-Derivative (PD) kontrol kullanılarak elde edilen birim adım cevabını MATLAB ile çizmektedir.

## İleri Yol Transfer Fonksiyonu
Birim geri beslemeli sistem için kullanılan ileri yol transfer fonksiyonu aşağıdaki gibidir:

![ileri yol tf](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/a69079c9-6bec-4678-8315-070eb46cf166)

## Matematiksel İşlemler
Sistem transfer fonksiyonunun matematiksel açıklaması ve elde edilişi:

![islemler](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/763edae9-98b9-4a8c-a76c-7c352a7afd0d)


## MATLAB Kodu ve Grafik

```matlab
tf_sys = tf([1630.53 1222897.5], [1 1991.73 1222897.5]);
step(tf_sys);
legend('Kp=1.5, Kd=0.002');

![stepresponse](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/f516c2e2-9ab5-4d32-9b30-c11f57d74c20)


## Performans Analizi
PD kontrolünün etkisi aşağıdaki gibidir:

![performans](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/6ad3b544-2808-4263-af1b-068a8cd1ad64)

Rise Time (tr) ve Settling Time (ts): PD kontrol sayesinde bu değerler azalmıştır.
Sönümleme (Damping): Sönümleme artmış, maksimum overshoot azalmıştır.
Bant Genişliği: Sistemin bant genişliği artmıştır.
Kalıcı Durum Hatası (ess): Birim adım cevabında kalıcı durum hatası 0'dır.

## Nasıl Başlamalı?
1. Bu repo'yu bilgisayarınıza klonlayın.
   ```bash
   git clone https://github.com/dagaca/Numerical-Control-with-MATLAB.git

2. MATLAB'e gidin ve stepResponse_PDControl.m dosyasını açın.

3. Dosyayı çalıştırarak birim adım cevabını gözlemleyin.

## Katkıda Bulunma
Eğer bu projeye katkıda bulunmak istiyorsanız, lütfen bir çatal oluşturun ve pull taleplerinizi gönderin. Katkılarınız çok değerlidir!
