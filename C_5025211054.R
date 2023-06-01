#NO. 1

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

#Penyelesaian No. 1b
t.test (Y, X, paired = TRUE, var.equal = FALSE)  
#t = 7.7152, df = 8, p-value = 5.664e-05


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

#NO. 2

# Terlebih dahulu menginstall packages dan library berikut :
install.packages("BSDA")
library(BSDA)

#Membuat Hipotesis H0 dan H1 :
# H0 :Rata-rata mobil dikemudikan <= 25.000 kilometer per tahun.
# H1 :Rata-rata mobil dikemudikan > 25.000 kilometer per tahun.

#Data yang diketahui :
# mean = 23500 = mean.x
# standar deviasi = 3000 = sigma.x
# n = 100 = n.x
# H1 = lebih besar dari = greater =(alternative)
# mu = 25000 
# confident level = 95% = 0,95 = conf.level
# significant level (α)= 5% = 0,05


#Penyelesaian No. 2a
# karena n >= 30 maka dapat digunakan distribusi normal dengan uji z-distribution :
zsum.test(mean.x = 23500, sigma.x = 3000, n.x = 100, alternative = "greater", mu = 25000, conf.level = 0.95)  
# Berdasarkan hasil yang telah didapatkan, H1 bernilai salah bahwa Rata-rata mobil dikemudikan lebih dari 25.000 kilometer per tahun
# Saya tidak setuju dengan klaim tersebut.


# Penyelesaian No. 2c
# p-value(z=-5) > (α=0.05)
# Berada pada daerah penerimaan atau H0 diterima.
# Sehingga, kesimpulannya Hipotesis Alternatif (H1) bernilai salah atau menolak H1 bahwa Rata-rata mobil dikemudikan lebih dari 25.000 kilometer per tahun

#NO. 3

#Jika belum, terlebih dahulu diinstal packages dan library berikut : 
install.packages("BSDA")
library(BSDA)

#Penyelesaian No. 3a
# HO : Tidak ada perbedaan pada rata-rata saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2)
# H1 : Ada perbedaan pada rata-rata saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2)


#Penyelesaian No. 3b
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
# t = 1.8304, df = 45, p-value = 0.07381


#Penyelesaian No. 3c
# Terlebih dahulu menginstall packages dan library berikut :
install.packages("vctrs")
install.packages("mosaic")
library(mosaic)

# Menampilkan grafik yang akan digunakan untuk set nilai kritikal
plotDist(dist = 't', df = 2, col = "blue")


#Penyelesaian No. 3d
qt(p=0.05/2, df=22, lower.tail=FALSE)
# nilai critical = 2.073873


#Penyelesaian No. 3e
# Keputusan berdasarkan hasil yang didapatkan sebelumnya :
# t = 1.8304 dan nilai kritikal = 2.073873
# t < nilai kritikal, atau t berada pada daerah penerimaan H0 (TERIMA H0)

# p-value = 0.07381 dan α = 0.05
# p-value >= α (TERIMA H0)

#Jadi, keputusannya adalah menerima Hipotesis null atau H0


#Penyelesaian No. 3f
# Berdasarkan keputusan pada no. 3e, maka kesimpulannya:
# Tidak ada perbedaan pada rata-rata saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2)
# µ1 = µ2

#NO. 4

install.packages("readr") #instal paket readr
library(readr) #memuat paket readr

#Penyelesaian No.4a
GlassTempLight <- read_csv("C:/Users/LENOVO/Downloads/GTL.csv")

install.packages("ggplot2") #instal paket ggplot2
library(ggplot2) #memuat paket ggplot2

ggplot(GlassTempLight, aes(x = Temp, y = Light)) + 
  geom_point() + 
  facet_grid(.~Glass, labeller = label_both)



#Penyelesaian No.4b
GlassTempLight $Glass <- as.factor(GlassTempLight $Glass)
GlassTempLight $Temp_Factor <- as.factor(GlassTempLight $Temp)
str(GlassTempLight)

anova <- aov(Light ~ Glass*Temp_Factor, data = GlassTempLight)
summary(anova) 


#Penyelesaian No. 4c

install.packages("dplyr") #instal paket dplyr
library(dplyr) #memuat paket dplyr

SummaryData <- group_by(GlassTempLight, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(SummaryData)

