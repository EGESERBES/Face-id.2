A = @(x) 5*x;

B = @(x) 2 - 5*x;

C = @(x) 5*x -1;

D = @(x) 3 - 5*x;

E = @(x) 5.*x -2;

F = @(x) 4 - 5*x;

G = @(x) 5*x -3;

H = @(x) 5 - 5*x;

%kayitliGozAgirlikliOrani = 0.72;
%kayitliYuzAgirlikliOrani = 0.89;
%kayitliBurunAgirlikliOrani = 0.71;
%kayitliDudakAgirlikliOrani = 0.97;
%kayitliYuzunAgirlikliRengi = 0.6665;

EmininGozOrani = 0.258;
EmininYuzOrani = 0.67;
EmininBurunOrani = 0.75;
EmininDudakOrani = 0.43;
EmininYuzunRengi = 0.4987;

EgeninGozOrani = 0.25;
EgeninYuzOrani = 0.75;
EgeninBurunOrani = 0.6153;
EgeninDudakOrani = 0.39;
EgeninYuzunRengi = 0.6782;

AdilinGozOrani = 0.244;
AdilinYuzOrani = 0.77;
AdilinBurunOrani = 0.86;
AdilinDudakOrani = 0.28;
AdilinYuzunRengi = 0.6106;

MelisinGozOrani = 0.31;
MelisinYuzOrani = 0.77;
MelisinBurunOrani = 0.61;
MelisinDudakOrani = 0.36;
MelisinYuzunRengi = 0.7459;

IzzetinGozOrani = 0.18;
IzzetinYuzOrani = 0.66;
IzzetinBurunOrani = 0.66;
IzzetinDudakOrani = 0.24;
IzzetinYuzunRengi = 0.6526;




agirliksizkmatris=[AdilinGozOrani,AdilinBurunOrani,AdilinYuzOrani,AdilinDudakOrani,AdilinYuzunRengi;
                   EmininGozOrani,EmininBurunOrani,EmininYuzOrani,EmininDudakOrani,EmininYuzunRengi;                
                   EgeninGozOrani,EgeninBurunOrani,EgeninYuzOrani,EgeninDudakOrani,EgeninYuzunRengi;
                   IzzetinGozOrani,IzzetinBurunOrani,IzzetinYuzOrani,IzzetinDudakOrani,IzzetinYuzunRengi;
                   MelisinGozOrani,MelisinBurunOrani,MelisinYuzOrani,MelisinDudakOrani,MelisinYuzunRengi];




FonksiyonluMatris = zeros(5);

i = 1;
while i <=5
    j=1;
    while j <=5 
        if agirliksizkmatris(i,j) <= 0.2
            FonksiyonluMatris(i,j) = A(agirliksizkmatris(i,j));
        elseif agirliksizkmatris(i,j) <= 0.3
            FonksiyonluMatris(i,j) = B(agirliksizkmatris(i,j));
        elseif agirliksizkmatris(i,j) <= 0.4
            FonksiyonluMatris(i,j) = C(agirliksizkmatris(i,j));
        elseif agirliksizkmatris(i,j) <= 0.5
            FonksiyonluMatris(i,j) = D(agirliksizkmatris(i,j));
        elseif agirliksizkmatris(i,j) <= 0.6
            FonksiyonluMatris(i,j) = E(agirliksizkmatris(i,j));
        elseif agirliksizkmatris(i,j) <= 0.7
            FonksiyonluMatris(i,j) = F(agirliksizkmatris(i,j));
        elseif agirliksizkmatris(i,j) <= 0.8
            FonksiyonluMatris(i,j) = G(agirliksizkmatris(i,j));
        elseif agirliksizkmatris(i,j) <= 1
            FonksiyonluMatris(i,j) = H(agirliksizkmatris(i,j));
        end
        
        j = j + 1 ;

    end
    i = i + 1 ;
end

KayitliYuzunSiniflari = [2 6 7 3 6 ;
                         2 6 7 3 6 ;
                         2 6 7 3 6 ;
                         2 6 7 3 6 ;
                         2 6 7 3 6 ];





AgirlikDegeriBulmaMatrisi = zeros(5);
                            
i = 1;
while i <=5
    j=1;
    while j <=5 
        if agirliksizkmatris(i,j) <= 0.2
            AgirlikDegeriBulmaMatrisi(i,j) = 1;
        elseif agirliksizkmatris(i,j) <= 0.3
            AgirlikDegeriBulmaMatrisi(i,j) = 2;
        elseif agirliksizkmatris(i,j) <= 0.4
            AgirlikDegeriBulmaMatrisi(i,j) = 3;
        elseif agirliksizkmatris(i,j) <= 0.5
            AgirlikDegeriBulmaMatrisi(i,j) = 4;
        elseif agirliksizkmatris(i,j) <= 0.6
            AgirlikDegeriBulmaMatrisi(i,j) = 5;
        elseif agirliksizkmatris(i,j) <= 0.7
            AgirlikDegeriBulmaMatrisi(i,j) = 6;
        elseif agirliksizkmatris(i,j) <= 0.8
            AgirlikDegeriBulmaMatrisi(i,j) = 7;
        elseif agirliksizkmatris(i,j) <= 1
            AgirlikDegeriBulmaMatrisi(i,j) = 8;
        end
        j = j + 1 ;
    end
    i = i + 1 ;
end

KayitlidanUzaklikMatrisi = abs(AgirlikDegeriBulmaMatrisi - KayitliYuzunSiniflari) ;

AgirlikKatsayisiMatrisi = 1./(KayitlidanUzaklikMatrisi + 1 );

AgirlikliMatris = FonksiyonluMatris.*AgirlikKatsayisiMatrisi;


KayitliYuzAgirlikliMatrisi = [0.72 0.89 0.71 0.97 0.666;
                              0.72 0.89 0.71 0.97 0.666;
                              0.72 0.89 0.71 0.97 0.666;
                              0.72 0.89 0.71 0.97 0.666;
                              0.72 0.89 0.71 0.97 0.666];


AgirlikliFarklarinMatrisi = abs(KayitliYuzAgirlikliMatrisi - AgirlikliMatris)





AdilinAgirlikliFarklarinMatrisi  = AgirlikliFarklarinMatrisi(1,:);
EmininAgirlikliFarklarinMatrisi  = AgirlikliFarklarinMatrisi(2,:);
EgeninAgirlikliFarklarinMatrisi  = AgirlikliFarklarinMatrisi(3,:);
IzzetinAgirlikliFarklarinMatrisi = AgirlikliFarklarinMatrisi(4,:);
MelisinAgirlikliFarklarinMatrisi = AgirlikliFarklarinMatrisi(5,:);




i =1;
AdilinAgirlikliFarklarinMatrisininElemanSayisi=0;
a=5;
while i<=a
    if AdilinAgirlikliFarklarinMatrisi(i) == 0
        AdilinAgirlikliFarklarinMatrisi(i)=[];
        AdilinAgirlikliFarklarinMatrisininElemanSayisi=AdilinAgirlikliFarklarinMatrisininElemanSayisi+1;
        a=a-1;
    else
        AdilinAgirlikliFarklarinMatrisi(i) = AdilinAgirlikliFarklarinMatrisi(i);
       

    end
     i=i+1;
end

AdilinAgirlikliFarklarinMatrisininElemanSayisi=5-AdilinAgirlikliFarklarinMatrisininElemanSayisi;







i =1;
EmininAgirlikliFarklarinMatrisininElemanSayisi=0;
a=5;
while i<=a
    if EmininAgirlikliFarklarinMatrisi(i) == 0
        EmininAgirlikliFarklarinMatrisi(i)=[];
        EmininAgirlikliFarklarinMatrisininElemanSayisi=EmininAgirlikliFarklarinMatrisininElemanSayisi+1;
        a=a-1;
    else
        EmininAgirlikliFarklarinMatrisi(i) = EmininAgirlikliFarklarinMatrisi(i);
       

    end
     i=i+1;
end

EmininAgirlikliFarklarinMatrisininElemanSayisi=5-EmininAgirlikliFarklarinMatrisininElemanSayisi;







i =1;
EgeninAgirlikliFarklarinMatrisininElemanSayisi=0;
a=5;
while i<=a
    if EgeninAgirlikliFarklarinMatrisi(i) == 0
        EgeninAgirlikliFarklarinMatrisi(i)=[];
        EgeninAgirlikliFarklarinMatrisininElemanSayisi=EgeninAgirlikliFarklarinMatrisininElemanSayisi+1;
        a=a-1;
    else
        EgeninAgirlikliFarklarinMatrisi(i) = EgeninAgirlikliFarklarinMatrisi(i);
       

    end
     i=i+1;
end

EgeninAgirlikliFarklarinMatrisininElemanSayisi=5-EgeninAgirlikliFarklarinMatrisininElemanSayisi;










i =1;
IzzetinAgirlikliFarklarinMatrisininElemanSayisi=0;
a=5;
while i<=a
    if IzzetinAgirlikliFarklarinMatrisi(i) == 0
       IzzetinAgirlikliFarklarinMatrisi(i)=[];
        IzzetinAgirlikliFarklarinMatrisininElemanSayisi=IzzetinAgirlikliFarklarinMatrisininElemanSayisi+1;
        a=a-1;
    else
        IzzetinAgirlikliFarklarinMatrisi(i) = IzzetinAgirlikliFarklarinMatrisi(i);
       

    end
     i=i+1;
end

IzzetinAgirlikliFarklarinMatrisininElemanSayisi=5-IzzetinAgirlikliFarklarinMatrisininElemanSayisi;








i =1;
MelisinAgirlikliFarklarinMatrisininElemanSayisi=0;
a=5;
while i<=a
    if MelisinAgirlikliFarklarinMatrisi(i) == 0
       MelisinAgirlikliFarklarinMatrisi(i)=[];
        MelisinAgirlikliFarklarinMatrisininElemanSayisi=MelisinAgirlikliFarklarinMatrisininElemanSayisi+1;
        a=a-1;
    else
        MelisinAgirlikliFarklarinMatrisi(i) = MelisinAgirlikliFarklarinMatrisi(i);
       

    end
     i=i+1;
end

MelisinAgirlikliFarklarinMatrisininElemanSayisi=5-MelisinAgirlikliFarklarinMatrisininElemanSayisi;





AdilinOrtalamaFark = prod(AdilinAgirlikliFarklarinMatrisi,2)^(1/AdilinAgirlikliFarklarinMatrisininElemanSayisi)

if AdilinOrtalamaFark <= 0.06
    disp('Adil için uyumluluk sağlandı')
else 
    disp('Tekrar deneyiniz')
end;






EmininOrtalamaFark = prod(EmininAgirlikliFarklarinMatrisi,2)^(1/EmininAgirlikliFarklarinMatrisininElemanSayisi)

if EmininOrtalamaFark <= 0.06
    disp('Emin için uyumluluk sağlandı')
else 
    disp('Tekrar deneyiniz')
end;





EgeninOrtalamaFark = prod(EgeninAgirlikliFarklarinMatrisi,2)^(1/EgeninAgirlikliFarklarinMatrisininElemanSayisi)

if EgeninOrtalamaFark <= 0.06
    disp('Ege için uyumluluk sağlandı')
else 
    disp('Tekrar deneyiniz')
end;



IzzetinOrtalamaFark = prod(IzzetinAgirlikliFarklarinMatrisi,2)^(1/IzzetinAgirlikliFarklarinMatrisininElemanSayisi)

if IzzetinOrtalamaFark <= 0.06
    disp('İzzet için uyumluluk sağlandı')
else 
    disp('Tekrar deneyiniz')
end;


MelisinOrtalamaFark = prod(MelisinAgirlikliFarklarinMatrisi,2)^(1/MelisinAgirlikliFarklarinMatrisininElemanSayisi)

if MelisinOrtalamaFark <= 0.06
    disp('Melis için uyumluluk sağlandı')
else 
    disp('Tekrar deneyiniz')
end;