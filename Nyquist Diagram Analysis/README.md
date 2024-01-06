# Nyquist Diagram Analysis
Bu MATLAB projesi, bir sistem transfer fonksiyonunun NYQUIST diyagramını çizerek sistem stabilitesini analiz eder.

## İleri Yol Transfer Fonksiyonu

![ileriyoltf](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/93c7a0b9-029d-431c-a59a-ad7631429969)


## Matematiksel İşlemler

![L(s)](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/c3fe83b9-fb92-4598-90b3-7754a17a9183)


## MATLAB Kodu ve Grafik

```matlab

% Sistem transfer fonksiyonunu tanımla
sys1 = tf([1630.53 1222897.5], [1 361.2 0]);

% NYQUIST diyagramını çizdir
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
```

![grafik](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/c61582af-ab84-45de-8051-bb568c765bdd)

![grafik2](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/7de9c359-d80e-459d-9dc8-8cf574c4e8d7)

## Analiz ve Yorumlar

![degerler](https://github.com/dagaca/Numerical-Control-with-MATLAB/assets/80363244/96efa721-e723-491e-9e9b-fbae4f7e4518)

- **Faz Marjini:**
  Faz marjini pozitif olduğundan dolayı, sistem faz marjini açısından kararlıdır.
- **Kazanç Marjini:**
  PD kontrol ilave edildiğinde kazanç marjini sonsuz kabul edilir. Sistem kazanç marjini açısından sonsuz olduğu için göreli kararlılık faz marjini ile ölçülür.
- **PD Kontrol ve Sistem Kararlılığı:**
  PD kontrol yapısı eklenerek sistem daha kararlı bir hale gelmiştir. Bu durum, sistemdeki kararlılık artışını gösterir.
