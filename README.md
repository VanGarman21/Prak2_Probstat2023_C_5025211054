# Prak2_Probstat2023_C_5025211054

<div align=center>
  
| Nama |  M. Armand Giovani          |
|:-----|:----------------------------|
| NRP  | 5025211054                  |
| Kelas|          C                  |

</div>

<div align=justify>

### **Soal 1**

Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas $A$ terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas $A$, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas $A$. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas $A$.

<div align=center>
  
![image](https://github.com/VanGarman21/Prak1_Probstat2023_C_5025211054/assets/100523471/1c2b0396-2357-463d-9ee5-1438b10588ab)

</div>
  
  Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

<ol type="a">
<li>
  
  Carilah Standar deviasi dari data selisih pasangan pengamatan tabel diatas!

 </li>

```R
#Penyelesaian No. 1a

# Menginputkan data
X <- c(78,75,67,77,70,72,78,70,77)
Y <- c(100,95,70,90,90,90,89,90,100)

#Menghitung selisih data X dan Y.
Selisih <- c(Y-X)

#Menghitung standar deviasi.
StandarDeviasi <- sd(Selisih)
paste("Standar Deviasi = ", StandarDeviasi)
#Standar Deviasi =  6.48074069840786
```

 <div align=center>
  
 ![image](https://github.com/VanGarman21/Prak2_Probstat2023_C_5025211054/assets/100523471/74ad6edd-1a06-4799-b865-b8ac0f8e77c4)

</div>
 
<li>
Carilah nilai t (p-value)!
</li>

```R
#Penyelesaian No. 1b
t.test (Y, X, paired = TRUE, var.equal = FALSE)
#t = 7.7152, df = 8, p-value = 5.664e-05
```

 <div align=center>
  
![image](https://github.com/VanGarman21/Prak2_Probstat2023_C_5025211054/assets/100523471/32511ea0-f35d-4020-b2c5-4d35bf002360)

  </div>
  
> Didapatkan nilai t = 7.7152, df = 8, p-value = 5.664e-05.

<li>
Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴”!
</li>

```R
#Penyelesaian No. 1c
#H0 : “Tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
#H1 : “Ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

#Confident level = 95% = 0.95
#Significant Level (𝛼) = 5% = 0,05

# Menggunakan two-tail,
# Lihat Tabel distribusi t
# Kolom = 𝛼/2 = 0,05/2 = 0,025
# Baris = df = 8 (nilai didapat dari no. 1b)
# Maka, critical value = 2,306
# t = 7.7152 (nilai didapat dari no. 1b)
# 7.7152 berada di daerah tolak H0
# Sehingga kesimpulannya sesuai dengan H1 atau Ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴

#𝛼(Significant Level) = 5% = 0,05 (Significant Level)
# p-value = 5.664e-05 = 0,00005664
# 0,00005664 <= 0,05 (nilai didapat dari no. 1b)
# Jika p-value <= 𝛼, maka kesimpulannya adalah tolak H0
# Sehingga kesimpulannya sesuai dengan H1 atau Ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴

```

 <div align=center>
  
![image](https://github.com/VanGarman21/Prak2_Probstat2023_C_5025211054/assets/100523471/46156a2c-0b05-4bd6-a478-eb09ed743425)

  </div>
</ol>
  
## NO. 2
> Diketahui bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3.000 kilometer (kerjakan menggunakan library seperti referensi pada modul).

Terlebih dahulu menginstall packages dan library berikut :

```
install.packages("BSDA")
library(BSDA)
```

Soal ini menggunakan prinsip Uji Hipotesa 1 Sampel.

Membuat Hipotesis H0 dan H1 :

```R
# H0 :Rata-rata mobil dikemudikan <= 25.000 kilometer per tahun.
# H1 :Rata-rata mobil dikemudikan > 25.000 kilometer per tahun.
```

#Data yang diketahui :

```R
#Data yang diketahui :
# mean = 23500 = mean.x
# standar deviasi = 3000 = sigma.x
# n = 100 = n.x
# H1 = lebih besar dari = greater =(alternative)
# mu = 25000
# confident level = 95% = 0,95 = conf.level
# significant level (α)= 5% = 0,05
```

  <ol type="a">
<li>
Apakah Anda setuju dengan klaim tersebut? Jelaskan!
</li>
Karena n >= 30 maka dapat digunakan distribusi normal dengan uji z-distribution. Menggunakan fungsi `zsum.test()` dan menggunakan data yang diketahui sebagai berikut :
```R
zsum.test(mean.x = 23500, sigma.x = 3000, n.x = 100, alternative = "greater", mu = 25000, conf.level = 0.95)  
```
  <div align=center>

  </div>

Berdasarkan hasil yang telah didapatkan, H1 bernilai salah bahwa Rata-rata mobil dikemudikan lebih dari 25.000 kilometer per tahun
Saya tidak setuju dengan klaim tersebut.

<li>
  Buatlah kesimpulan berdasarkan p-value yang dihasilkan!
</li>

Karena `p-value(z=-5) > (α=0.05)` , maka H0 diterima atau berada pada daerah penerimaan. Sehingga, kesimpulannya Hipotesis Alternatif (H1) bernilai bernilai salah atau menolak H1 bahwa Rata-rata mobil dikemudikan lebih dari 25.000 kilometer per tahun

## NO. 3

> Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.
>
> <img width="323" alt="image" src="https://user-images.githubusercontent.com/103252800/206852836-ae3397e6-1840-40cc-837f-17455d2d840e.png">
> <img width="321" alt="image" src="https://user-images.githubusercontent.com/103252800/206852842-6c6a7bd5-4790-4fcb-8303-bdb96324b51e.png">
>
> **Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
> diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
> rata-ratanya (α= 0.05)? Buatlah :**

  <ol type="a">

<li>

$H_0$ dan $H_1$

</li>
  
  Menentukan Hipotesis :
```
HO : Tidak ada perbedaan pada rata-rata saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2).
H1 : Ada perbedaan pada rata-rata saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2).

````

  <li>
Hitung sampel statistik
</li>

Pertama-tama diinputkan terlebih dahulu data-data yang diketahui. Kemudian menggunakan TWO-SIDED atau TWO-TAILED test, dipakai fungsi `tsum.test()`. Sehingga, didapatkan hasil `t = 1.8304, df = 45, p-value = 0.07381`.

```R
n_bandung <- 20
n_bali <- 27
mean_bandung <- 3.64
mean_bali<- 2.79
sd_bandung <- 1.67
sd_bali <- 1.5
confident_level <- 0.95
# signifikan_level <- 0.05
# variance_bandung = variance_bali

#Menggunakan TWO-SIDED atau TWO-TAILED test

tsum.test(mean.x=mean_bandung, s.x = sd_bandung, n.x = n_bandung,
          mean.y =mean_bali , s.y = sd_bali, n.y = n_bali,
          alternative = "two.side", var.equal = TRUE, conf.level = confident_level)
````

<img width="600" alt="image" src="https://user-images.githubusercontent.com/103252800/207232910-5f8053e6-65a1-4d6c-84a0-bdcfd2882ca4.png">
  
  <li>
Lakukan uji statistik (df =2)
</li>

Terlebih dahulu menginstall packages dan library berikut :

```R
install.packages("vctrs")
install.packages("mosaic")
library(mosaic)
```

Kemudian, untuk melakukan uji statistik(df=2) kita perlu menampilkan grafik visualisasi yang akan digunakan untuk set nilai kritikal nantinya. Fungsi yang digunakan, yaitu `plotDist()`.

```
plotDist(dist = 't', df = 2, col = "blue")
```

Sehingga, ditampilkan grafik visualisasi untuk uji statistik dengan derajat bebas(df)=2 sebagi berikut.

<img width="481" alt="image" src="https://user-images.githubusercontent.com/103252800/207234114-270b5ec4-c1fe-4098-a075-2bfcaaa3c800.png">
  
 <li>
Nilai kritikal
</li>

Untuk mendapatkan nilai kritikal dengan kondisi TWO-TAILED, maka digunkan fungsi `qt()` , sehingga didapatkan `nilai kritikal = 2.073873`.

```
qt(p=0.05/2, df=22, lower.tail=FALSE)
```

<img width="481" alt="image" src="https://user-images.githubusercontent.com/103252800/207234420-b43d1f73-4f5a-403f-a5d2-610ec807c36b.png">
    
  <li>
Keputusan
</li>  
  
Berdasarkan hasil yang telah didapatkan sebelumnya, kita dapat membuat keputusan sebagai berikut :
```R
t = 1.8304 dan nilai kritikal = 2.073873
t < nilai kritikal, atau t berada pada daerah penerimaan H0 (TERIMA H0)

p-value = 0.07381 dan α = 0.05
p-value >= α (TERIMA H0)

````
Jadi keputusannya adalah menerima Hipotesis null atau H0.

 <li>
Kesimpulan
</li>

Berdasarkan keputusan pada no. 3e, maka kesimpulannya:

Menerima Hipotesis null atau H0 bahwa Tidak ada perbedaan pada rata-rata saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2).
µ1 = µ2


## NO. 4
> Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut:
>
<div align="center">

<https://drive.google.com/file/d/1pICtCrf61DRU86LDPQDJmcKiUMVt9ht4/view>

</div>

>
> **Dengan data tersebut:**

 <ol type="a">
<li>
Buatlah plot sederhana untuk visualisasi data.
</li>

Pertama-tama, diinputkan terlebih dahulu data yang telah disediakan menggunakan fungsi `read.csv()`. Kemudian, dibuatlah plot sederhana untuk visualisasi data menggunakan fungsi `ggplot()`.

```R
GlassTempLight <- read_csv("C:/Users/LENOVO/Downloads/GTL.csv")

ggplot(GlassTempLight, aes(x = Temp, y = Light)) +
  geom_point() +
  facet_grid(.~Glass, labeller = label_both)
````

Sehingga, ditampilkan plot sebagai berikut :

<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/207243646-a885567b-80f3-4324-b769-7de6d495ab86.png">

  <li>
Lakukan uji ANOVA dua arah.
</li>

Untuk melakukan uji ANOVA dua arah untuk 2 faktor, pertama-tama dibuat terlebih dahulu variabel as factor sebagai suatu anova, kemudian dilakukan Analisis of Variace.

```R
GlassTempLight $Glass <- as.factor(GlassTempLight $Glass)
GlassTempLight $Temp_Factor <- as.factor(GlassTempLight $Temp)
str(GlassTempLight)

anova <- aov(Light ~ Glass*Temp_Factor, data = GlassTempLight)
summary(anova)
```

<img width="478" alt="image" src="https://user-images.githubusercontent.com/103252800/207244986-a2aceb7c-5a12-4f54-9c61-1e64020f090f.png">

  <li>
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi).
</li>

Untuk menampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi), digunakan fungsi `group_by()`, `summarise()` dan `arrange()`. Kemudian dicetak menggunakan fungsi `print()`.

```R
install.packages("dplyr") #instal paket dplyr
library(dplyr) #memuat paket dplyr

SummaryData <- group_by(GlassTempLight, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(SummaryData)
```

<img width="479" alt="image" src="https://user-images.githubusercontent.com/103252800/207245448-3e87e478-92e6-4715-8b6e-4002509d6ddc.png">
