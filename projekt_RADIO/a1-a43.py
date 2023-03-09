import matplotlib.pyplot as plt
import math
import numpy as np

# Wymiary pokoju (w metrach)
room_width = 25
room_length = 15.45
room_high=3
wysokosc_nadajnika=room_high/2
d_odnadajnika=room_width-3

#parametry

frequency=5*10**9
c=299792458
lam=c/frequency
deltad = 0.001

#A1
x1 = np.arange(1, d_odnadajnika, 0.01)
y1 = np.zeros(len(x1))
FSL = [((4*np.pi*i)/lam)**2 for i in x1]
tlumienie = []
for i in FSL:
    if i==0:
        tlumienie.append(0)
    else:
        wynik=10*math.log(i,10)
        tlumienie.append(wynik)
#A2
#Przenikalność betonu
beton=5.24
Ret=((beton-math.sqrt(beton))/(beton+math.sqrt(beton)))
print('Odbicie:',Ret)
x2 = np.arange(1,d_odnadajnika+0.1,0.1)
x3=np.arange(1,d_odnadajnika+0.1,0.1)
tlumienie2=[]
tlumienie2wdb=[]
for i in x2:
    if(i!=0):
        fi1=(100*np.pi*i)/3
        fi2=((100*np.pi)*(2*d_odnadajnika-i))/3
        wynik= (1/i)*math.e**(1j*fi1)+(Ret/(2*d_odnadajnika-i)*math.e**(1j*fi2))
        wynik=abs(wynik)**2
        tlumienie2.append(wynik)
        wynikwDB=10*np.log10(wynik)
        tlumienie2wdb.append(wynikwDB)

#A3
#Rozbudowałeś pokój o część o bokach 𝑏, 𝑎. Odbiornik porusza się w osi tej części
#Wyznacz stratę dyfrakcji według metody Deygout. Przyjmij występowanie dyfrakcji wyłącznie, gdy odbiornik nie ma bezpośredniej widoczności z nadajnikiem
#dobudowany pokój o wymiarach room_width_added = 25 room_length_added = 15.45
room_width_added = 25
room_length_added = 15.45

temp=room_length_added+0.1
e=room_width_added-room_length_added/2
nadajnik=np.arange(5,temp,0.1)
tlum_dyfrakcji=[]

for d in nadajnik:
    f=room_length_added/2+d
    g=math.sqrt(e**2+f**2)
    obwod=(e+f+g)
    polowa_obwodu=obwod/2
    delta=math.sqrt(polowa_obwodu*(polowa_obwodu-e)*(polowa_obwodu-f)*(polowa_obwodu-g))
    h=(2*delta)/g
    r1=math.sqrt((room_length_added/2)**2+e**2)
    r2=math.sqrt((room_length_added/2)**2+d**2)
    v=h*math.sqrt(2/lam*g/(r1*r2))
    c=6.9 + 20*math.log(math.sqrt((v-0.1)**2+1)+v-0.1,10)
    tlum_dyfrakcji.append(c)
print('Tłumienie dyfrakcji:', tlum_dyfrakcji)
#A.4 Kolejna rozbudowa, tak, aby pokój stał się symetryczną podkową.
#Wyznacz wartość tłumienia ścieżki dla trzech wariantów radiowych:
#A.4.1 Sygnał przenika przez dwie ściany i dociera do odbiornika :
room_width_3 = 25
room_length_3 = 15.45

temp_2=room_width_3+0.1
m=np.arange(0,temp_2,0.1)

os=room_length_3+room_width_3

tlumienie_a41=[]
lenght_table=[]

for d in m:
    if(d==0):
        lenght_41=os
    else:
        lenght_41=math.sqrt(os**2+d**2)
    PL=36.8*math.log(lenght_41,10)+43.8+20*math.log(5,10)
    tlumienie_a41.append(PL)
    lenght_table.append(lenght_41)
print('Tłumienie 4.1: ',tlumienie_a41)
#A.4.2 Sygnał ulega podwójnej dyfrakcji, modelowanej tym razem według metody Berga

meters_42=np.arange(0.1,10,0.1)
lam_q=0.031
q90=math.sqrt(lam_q/lam)

teta_1=(math.atan((room_width_3-room_length_3)/(room_length_3/2))*360)/(2*np.pi)
k1=1
s0= math.sqrt((room_length_3/2)**2+(room_width_3-room_length_3)**2)
d1=s0
q1=q90*(teta_1/90)**3.5

k2=room_width_3+d1*q1

d2=k2*room_width_3+d1

tlumienie_a42=[]

for d in meters_42:
    lenght_42=math.sqrt((room_length_3/2)**2+d**2)
    teta_2=(math.atan((d)/(room_length_3/2))*360)/(2*np.pi)
    q2=q90*(teta_2/90)**3.5

    k3 = k2 + d2 * q2

    d3 = k3 * room_width_3 + d2

    L=20*math.log((4*np.pi)*d3/lam,10)
    tlumienie_a42.append(L)

#A.4.3 Sygnał ulega kilkukrotnym odbiciom wynikającym z zasad geometrii

tlumienie_cal_a43=[]
sender_high=[]
wsp_tlum_sciany=5

for triangle in range(30,42):
    triangle_rad = (triangle * 2 * np.pi) / 360

    odbicie_pierwsze = room_length_3 * math.tan(triangle_rad)

    dl_pierwszego_odbicia=((room_length_3)/math.cos(triangle_rad))
    odbicie_drugie=2*odbicie_pierwsze
    odbicie_trzecie_nadajnika = os - 3 * odbicie_pierwsze
    odbicie_trzecie = 3 * odbicie_pierwsze
    inside_triangle = 90-triangle
    inside_triangle_rad = (triangle_rad*2*np.pi)/360

    h=math.tan(inside_triangle_rad)*odbicie_trzecie_nadajnika
    sender_high.append(h)


    tlumienie_odbiciowe = 3*(wsp_tlum_sciany**3/dl_pierwszego_odbicia)**2

    dl_nadajnik_odbiornik = 3 * dl_pierwszego_odbicia + h / math.sin(inside_triangle_rad)
    PL_3=36.8*math.log(dl_nadajnik_odbiornik,10)+43.8+20*math.log(5,10)
    t=PL_3+tlumienie_odbiciowe
    tlumienie_cal_a43.append(t)

    kat_trzecie_odbicie=((math.atan(h/odbicie_trzecie_nadajnika) *360)/(2*np.pi))

print('Długość sygnału odbiornika: ', dl_nadajnik_odbiornik)

plt.plot(x1, tlumienie, label='A1')
plt.xlabel('Odległość od punktu dostępowego (m)')
plt.ylabel('Tłumienie ścieżki (dB)')
plt.title('Wykres tłumienia ścieżki dla odbiornika poruszającego się w osi pokoju')
plt.legend()
plt.show()
plt.plot(x2, tlumienie2wdb, label='A2')
plt.xlabel('Odległość od nadajnika (m)')
plt.ylabel('Tłumienie (dB)')
plt.title('Wykres tłumienia ścieżki dla odbiornika poruszającego się w osi pokoju')
plt.legend()
plt.show()
plt.plot(nadajnik, tlum_dyfrakcji, label='A3')
plt.xlabel('Odległość od nadajnika (m)')
plt.ylabel('Tłumienie (dB)')
plt.title('Wykres strat dyfrakcji dla odbiornika poruszającego się w dobudowanej części')
plt.legend()
plt.show()
plt.plot(lenght_table, tlumienie_a41, label='A4.1')
plt.xlabel('Odległość od nadajnika (m)')
plt.ylabel('Tłumienie (dB)')
plt.title('Wykres tłumienia ścieżki dla odbiornika poruszającego się w drugim skrzydle budynku')
plt.legend()
plt.show()
plt.plot(meters_42, tlumienie_a42, label='A4.2')
plt.xlabel('Odległość od nadajnika (m)')
plt.ylabel('Tłumienie (dB)')
plt.title('Wykres tłumienia ścieżki dla odbiornika poruszającego się w drugim skrzydle budynku')
plt.legend()
plt.show()
plt.plot(sender_high, tlumienie_cal_a43, label='A4.3')
plt.xlabel('Odległość od punktu dostępowego (m)')
plt.ylabel('Tłumienie ścieżki (dB)')
plt.title('Wykres tłumienia ścieżki dla odbiornika poruszającego się w drugim skrzydle budynku')
plt.legend()
plt.show()
