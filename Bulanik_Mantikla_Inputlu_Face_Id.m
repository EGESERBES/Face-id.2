kayitliGozAgirlikliOrani = 0.72;
kayitliYuzAgirlikliOrani = 0.89;
kayitliBurunAgirlikliOrani = 0.71;
kayitliDudakAgirlikliOrani = 0.97;
kayitliYuzunAgirlikliRengi = 0.6665;

isminiz = input('İsmizini girin: ', 's');

KayitliYuzunSiniflari = [2 7 6 3 6 ] ;

A = @(x) 5*x;

B = @(x) 2 - 5*x;

C = @(x) 5*x -1;

D = @(x) 3 - 5*x;

E = @(x) 5*x -2;

F = @(x) 4 - 5*x;

G = @(x) 5*x -3;

H = @(x) 5 - 5*x;
                         


KarsilastirilacakGozEni = input('Göz eninizi giriniz: ');
KarsilastirilacakGozBoyu = input('Göz boyunuzu giriniz: ');
KarsilastirilacakGozOrani = KarsilastirilacakGozBoyu / KarsilastirilacakGozEni;
disp(['Göz oranınız: ', num2str(KarsilastirilacakGozOrani)]);

KarsilastirilacakYuzEni = input('Yüz eninizi giriniz: ');
KarsilastirilacakYuzBoyu = input('Yüz boyunuzu giriniz: ');
KarsilastirilacakYuzOrani = KarsilastirilacakYuzEni / KarsilastirilacakYuzBoyu;
disp(['Yüz oranınız: ', num2str(KarsilastirilacakYuzOrani)]);


KarsilastirilacakBurunEni = input('Burun eninizi giriniz: ');
KarsilastirilacakBurunBoyu = input('Burun boyunuzu giriniz: ');
KarsilastirilacakBurunOrani = KarsilastirilacakBurunEni / KarsilastirilacakBurunBoyu;
disp(['Burun oranınız: ', num2str(KarsilastirilacakBurunOrani)]);


KarsilastirilacakDudakEni = input('Dudak eninizi giriniz: ');
KarsilastirilacakDudakBoyu = input('Dudak boyunuzu giriniz: ');
KarsilastirilacakDudakOrani = KarsilastirilacakDudakBoyu / KarsilastirilacakDudakEni;
disp(['Dudak oranınız: ', num2str(KarsilastirilacakDudakOrani)]);



KarsilastirilacakYuzunKirmiziligi = input('Yüzünüzün RGB kırmızılık sayısal değerini giriniz:');
KarsilastirilacakYuzunYesilligi = input('Yüzünüzün RGB yeşillik sayısal değerini giriniz:');
KarsilastirilacakYuzunMaviligi = input('Yüzünüzün RGB maviliği sayısal değerini giriniz:');


KarsilastirilacakYuzunRengi = ((KarsilastirilacakYuzunKirmiziligi*KarsilastirilacakYuzunYesilligi*KarsilastirilacakYuzunMaviligi)^(1/3))/256
disp(['Ten renginizin sayısallaştırılmış değeri: ', num2str(KarsilastirilacakYuzunRengi)]);

agirliksizkmatris=[KarsilastirilacakGozOrani,KarsilastirilacakYuzOrani,KarsilastirilacakBurunOrani,KarsilastirilacakDudakOrani,KarsilastirilacakYuzunRengi];

 
AgirlikDegeriBulmaMatrisi = zeros(1,5);
i = 1 ;

while i <= 5
    if agirliksizkmatris(i) <= 0.2
            AgirlikDegeriBulmaMatrisi(i) = 1;
    elseif agirliksizkmatris(i) <= 0.3
            AgirlikDegeriBulmaMatrisi(i) = 2;
    elseif agirliksizkmatris(i) <= 0.4
            AgirlikDegeriBulmaMatrisi(i) = 3;
    elseif agirliksizkmatris(i) <= 0.5
            AgirlikDegeriBulmaMatrisi(i) = 4 ; 
    elseif agirliksizkmatris(i) <= 0.6
            AgirlikDegeriBulmaMatrisi(i) = 5;
    elseif agirliksizkmatris(i) <= 0.7
            AgirlikDegeriBulmaMatrisi(i) = 6;
    elseif agirliksizkmatris(i) <= 0.8
            AgirlikDegeriBulmaMatrisi(i) = 7;
    elseif agirliksizkmatris(i) <= 1
            AgirlikDegeriBulmaMatrisi(i) = 8;
    end
    i = i + 1 ;
end

FonksiyonluMatris = zeros(1,5);

i = 1;
while i <=5
    
        if agirliksizkmatris(i) <= 0.2
            FonksiyonluMatris(i) = A(agirliksizkmatris(i));
        elseif agirliksizkmatris(i) <= 0.3
            FonksiyonluMatris(i) = B(agirliksizkmatris(i));
        elseif agirliksizkmatris(i) <= 0.4
            FonksiyonluMatris(i) = C(agirliksizkmatris(i));
        elseif agirliksizkmatris(i) <= 0.5
            FonksiyonluMatris(i) = D(agirliksizkmatris(i));
        elseif agirliksizkmatris(i) <= 0.6
            FonksiyonluMatris(i) = E(agirliksizkmatris(i));
        elseif agirliksizkmatris(i) <= 0.7
            FonksiyonluMatris(i) = F(agirliksizkmatris(i));
        elseif agirliksizkmatris(i) <= 0.8
            FonksiyonluMatris(i) = G(agirliksizkmatris(i));
        elseif agirliksizkmatris(i) <= 1
            FonksiyonluMatris(i) = H(agirliksizkmatris(i));
        end
        
     
    i = i + 1 ;
end




KayitlidanUzaklikMatrisi = abs(AgirlikDegeriBulmaMatrisi - KayitliYuzunSiniflari) 

AgirlikKatsayisiMatrisi = 1./(KayitlidanUzaklikMatrisi + 1 )

AgirlikliMatris = FonksiyonluMatris.*AgirlikKatsayisiMatrisi

   



GozOraniFarki = abs(AgirlikliMatris(1,1) - kayitliGozAgirlikliOrani)
YuzOraniFarki = abs(AgirlikliMatris(1,2) - kayitliYuzAgirlikliOrani)
DudakOraniFarki = abs(AgirlikliMatris(1,3) - kayitliBurunAgirlikliOrani)
BurunOraniFarki = abs(AgirlikliMatris(1,4) - kayitliDudakAgirlikliOrani)
YuzunRengiFarki = abs(AgirlikliMatris(1,5) - kayitliYuzunAgirlikliRengi)

farkmatrisi = [GozOraniFarki,YuzOraniFarki,BurunOraniFarki,DudakOraniFarki,YuzunRengiFarki]
 

if GozOraniFarki==0
GozOraniFarki=[]
else
GozOraniFarki=GozOraniFarki;
end;

if YuzOraniFarki==0
YuzOraniFarki=[]
else
YuzOraniFarki=YuzOraniFarki;
end;

if DudakOraniFarki==0
DudakOraniFarki=[]
else
DudakOraniFarki=DudakOraniFarki;
end;

if BurunOraniFarki==0
BurunOraniFarki=[]
else
BurunOraniFarki=BurunOraniFarki;
end;

if YuzunRengiFarki==0
YuzunRengiFarki=[]
else
YuzunRengiFarki=YuzunRengiFarki;
end;

eleman_sayisi = numel(farkmatrisi);

disp(['Eleman sayısı: ', num2str(eleman_sayisi)]);






OrtalamaFark = prod(farkmatrisi,2)^(1/eleman_sayisi)

if OrtalamaFark <= 0.06
   disp(['Hoşgeldiniz : ', isminiz, ' kimliğiniz doğrulandı']);
else 
    disp([isminiz, ' Lütfen tekrar deneyiniz.']);
end;