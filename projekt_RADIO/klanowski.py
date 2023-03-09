import math
import matplotlib.pyplot as plt

# Obliczenia tłumienia sygnału
# Współczynnik odbicia przyjmij według normy P.2040
# Przenikalność elektryczną materiałów budowlanych przyjmij także według normy (rodzaj materiałów dobierz samodzielnie).

# Sygnał przenikający przez dwie ściany
A1 = 0.4
A2 = A1 * (2 - A1)
Signal_attenuation_1 = 10*math.log10(A1*A2)

# Sygnał ulegający podwójnej dyfrakcji
A3 = 0.36
A4 = A3 * (2 - A3)
Signal_attenuation_2 = 10*math.log10(A3*A4)

# Sygnał ulegający kilkukrotnym odbiciom
A5 = 0.84
A6 = A5 * (2-A5)
Signal_attenuation_3 = 10*math.log10(A5*A6)

# Dodanie odbicia od sąsiedniego budynku
A7 = 0.18
A8 = A5 * (2 - A5)
Signal_attenuation_4 = 10*math.log10(A7*A8)

# Obliczenia straty dyfrakcji
# Według metody Deygout
l1 = (math.pi * 12.36)/(5*math.log10(4))
l2 = (math.pi * 20)/(5*math.log10(4))
Difraction_loss_1 = 16*(math.log10(l1) + math.log10(l2))

# Według metody Berga
l1 = (math.pi * 12.36)/(5*math.log10(4))
Difraction_loss_2 =28*math.log10(l1)

# Obliczanie rozproszenia sygnału
# Przyjmij RMS Delay Spread
RMS_Delay_Spread = 0.01
Signal_Scattering = 10*math.log10(RMS_Delay_Spread)

# Obliczanie wartości w przypadku wystąpienia deszczu monsunowego
Rain_Attenuation = 0.02
Signal_Attenuation_Rain = 10*math.log10(Rain_Attenuation)

print("Tłumienie sygnału przenikającego przez dwie ściany wynosi {}dB".format(Signal_attenuation_1))
print("Tłumienie sygnału ulegającego podwójnej dyfrakcji wynosi {}dB".format(Signal_attenuation_2))
print("Tłumienie sygnału ulegającego kilkukrotnym odbiciom wynosi {}dB".format(Signal_attenuation_3))
print("Tłumienie sygnału ulegającego odbiciu od sąsiedniego budynku wynosi {}dB".format(Signal_attenuation_4))
print("Straty dyfrakcji w osi dobudowanej części wynoszą {}dB".format(Difraction_loss_1))
print("Straty dyfrakcji w osi dobudowanej części według metody Berga wynoszą {}dB".format(Difraction_loss_2))
print("Rozproszenie sygnału wynosi {}dB".format(Signal_Scattering))
print("Tłumienie sygnału w przypadku wystąpienia deszczu monsunowego wynosi {}dB".format(Signal_Attenuation_Rain))


ww = [0, Signal_attenuation_1, Signal_attenuation_2, Signal_attenuation_3, Signal_attenuation_4, Difraction_loss_1, Difraction_loss_2, Signal_Scattering, Signal_Attenuation_Rain]
x_labels = ['0','Sygnał przenikający przez dwie ściany','Sygnał ulegający podwójnej dyfrakcji','Sygnał ulegający kilkukrotnym odbiciom','Odbicie od sąsiedniego budynku','Straty dyfrakcji (Deygout)','Straty dyfrakcji (Berg)','Rozproszenie sygnału','Deszcz monsunowy']

plt.plot(x_labels, ww, marker='o', color='black')
plt.xticks(x_labels, rotation ='vertical')
plt.grid(True)
plt.title("Wykres tłumienia dla przypadków radiowych")
plt.xlabel("Przypadki radiowe")
plt.ylabel("Tłumienie")
plt.show()