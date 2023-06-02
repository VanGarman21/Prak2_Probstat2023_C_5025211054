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
  
