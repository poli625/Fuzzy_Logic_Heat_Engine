clear;clc;
tmp=zeros(6,61);
roznica=zeros(8,61);
y=zeros(16,201);
for i = 1:61
 x=i-31;
 tmp(1,i)=x;
 //term VL
 if x>=-30 & x<=-15
 VL=1;
 elseif x>= -15 & x<= -10
 VL=(-10-x)/(-10-(-15));
 else VL=0;
 end  
  tmp(2,i) = VL;
  
    //term L
  if x>=-15 & x<=-5
 L=(x-(-15))/(-5-(-15));
 elseif x>= -5 & x<= 5
 L=(5-x)/(10);
 else L=0;
 end  
    tmp(3,i)=L;
//term M
 if x>=0 & x<=8
  M=(x)/(8);
 elseif x>= 8 & x<= 15
 M=(15-x)/(15-8);
 else M=0;
 end  
 tmp(4,i)=M

//term H
 if x>=10 & x<=15
  H=(x-10)/(15-10);
 elseif x>= 15 & x<= 20
 H=(20-x)/(20-15);
 else H=0;
 end  
 tmp(5,i)=H
//termVH
 if x>=15 & x<=25
  VH =(x-15)/(25-15);
 elseif x>= 25 
 VH = 1;
 else VH = 0;
 end 
tmp(6,i)=VH

x=(i-31);
roznica(1,i)=x;
//term UDuza
   if x>=-30 & x<=-17
        UD = 1
    elseif x>= -17 & x<= -12.5
        UD=(-12.5 - x)/((-12.5)-(-17));
    else UD=0;
    end
roznica(2,i)= UD;
//termUSrednia
    if x>=-20 & x<=-10
        US = (x-(-20))/((-10)-(-20));
    elseif x>= -10 & x<=-6
        US = 1
    elseif x>= -6 & x<= -4
        US = ((-6)-x)/((-4)-(-6));
    else US = 0;
    end
roznica(3,i) = US;
//term UMala
    if  x>=-5 & x<=-3.5
        UM = (-3.5-x)/(-5-(-3.5));
    elseif x>=-3.5 & x<0
        UM = 1
    else UM = 0;
    end
roznica(4,i) = UM;
//termRowna
    if x == 0
        R = 1
    else R = 0
    end
roznica(5,i)=R;

//term Mala
    if  x>0 & x<=3.5
        M = 1
    elseif x>=3.5 & x<=5
        M = (5-x)/(5-3.5)
    else M = 0;
    end
roznica(6,i) = M;

//term Srednia
    if x>=4 & x<=6
       S=(x-4)/(6-4);
    elseif x>=6 & x<= 10
       S=1;
    elseif x>=10 & x<= 20
       S=(20-x)/(20-10);
    else S = 0;
    end
roznica(7,i) = S;

//term Duza
    if x>=12.5 & x<=17
        D=(x-12.5)/(17-12.5)
    elseif x>= 17 & x<= 30
        D=1;
    else D=0;
    end
roznica(8,i)=D;
end

for i=1:201
    x=(i-101)/100;
    y(1,i)=x;
    
    //singletony
    //VVLL
    if x == -1
       VVLL = 1;
   else VVLL = 0;
   end
   y(2,i) = VVLL;
   //VVL
      if x == -0.8
       VVL = 1;
   else VVL = 0;
   end
   y(3,i) = VVL;
   //VL
      if x == -0.7
       VL=1;
   else VL = 0;
   end
   y(4,i) = VL;
   //L
      if x == -0.5
       L=1;
   else L = 0;
   end
   y(5,i)=L
    //VLM
      if x == -0.3
       VLM=1;
   else VLM = 0;
   end
   y(6,i)=VLM
    //LM
      if x == -0.2
       LM=1;
   else LM = 0;
   end
   y(7,i)=LM
    //M
      if x == -0.1
       M=1;
   else M = 0;
   end
   y(8,i)=M
      //Rownosc
      if x == 0
       R=1;
   else R = 0;
   end
   y(9,i)=R
     //M
      if x == 0.1
       M=1;
   else M = 0;
   end
   y(10,i)=M
     //LM
      if x == 0.2
       LM=1;
   else LM = 0;
   end
   y(11,i)=LM
     //VLM
      if x == 0.3
       VLM=1;
   else VLM = 0;
   end
   y(12,i)=VLM
     //VLH
      if x == 0.5
       VLH=1;
   else VLH = 0;
   end
   y(13,i)=VLH
     //LH
      if x == 0.7
       LH=1;
   else LH = 0;
   end
   y(14,i)=LH
     //H
      if x == 0.8
       H=1;
   else H = 0;
   end
   y(15,i)=H
     //VH
      if x == 1
       VH=1;
   else VH = 0;
   end
   y(16,i)=VH
end
aktualnaTemp = input('Podaj aktualna temp: ');
docelowaTemp = input('Podaj docelowa temp: ');
roznicaTemp = (docelowaTemp - aktualnaTemp);
//rozmywanie roznicy
pUD = roznica(2,(roznicaTemp+31))
pUS = roznica(3,(roznicaTemp+31))
pUM = roznica(4,(roznicaTemp+31))
pR = roznica(5,(roznicaTemp+31))
pM = roznica(6,(roznicaTemp+31))
pS = roznica(7,(roznicaTemp+31))
pD = roznica(8,(roznicaTemp+31))

//rozmycie temperatur
pVL = tmp(2,aktualnaTemp+31);
pL = tmp(3,aktualnaTemp+31);
pMM = tmp(4,aktualnaTemp+31);
pH = tmp(5,aktualnaTemp+31);
pVH = tmp(6,aktualnaTemp+31);

//wspolczynniki

wVLUD = min(pVL,pUD);
wVLUS = min(pVL,pUS);
wVLUM = min(pVL,pUM);
wVLR = min(pVL,pR);
wVLM = min(pVL,pM);
wVLS = min(pVL,pS);
wVLD = min(pVL,pD);
wLUD = min(pL,pUD);
wLUS = min(pL,US);
wLUM = min(pL,pUM);
wLR = min(pL,pR);
wLM = min(pL,pM);
wLS = min(pL,pS);
wLD = min(pL,pD);
wMUD = min(pMM,pUD);
wMUS = min(pMM,pUS);
wMUM = min(pMM,pUM);
wMR = min(pMM,pR);
wMM = min(pMM,pM);
wMS = min(pMM,pS);
wMD = min(pMM,pD);
wHUD = min(pH,pUD);
wHUS = min(pH,pUS);
wHUM = min(pH,pUM);
wHR = min(pH,pR);
wHM = min(pH,pM);
wHS = min(pH,pS);
wHD = min(pH,pD);
wVHUD = min(pVH,pUD);
wVHUS = min(pVH,pUS);
wVHUM = min(pVH,pUM);
wVHR = min(pVH,pR);
wVHM = min(pVH,pM);
wVHS = min(pVH,pS);
wVHD = min(pVH,pD);

//agregacja
am1 = max(wVLUD);
am08 = max(wVLUS,wLUS);
am07 = max(wMUD,wLUS,wVLUM);
am05 = max(wHUD,wMUS,wMUM);
am03 = max(wVHUD,wHUS,wMUM);
am02 = max(wVHUS,wHUM);
am01 = max(wVHUM);
a0 = max(wVLR,wLR,wMR,wHR,wVHR);
a01 = max(wVLM);
a02 = max(wLM,wVLS);
a03 = max(wMM,wLS,wVLD);
a05 = max(wHM,wMS,wLD)
a07 = max(wVHM,wHS,wMD);
a08 = max(wVHS,wHD);
a1 = max(wVHD);

//metoda srodka ciezkosci
wynik = (1*a1 + 0.8*a08 + 0.7*a07 + 0.5*a05 + 0.3+a03 + a02*0.2+ a01*01 + 0*a0 + am01*(-0.1) + am02*(-0.2) + am03*(-0.3) + am05*(-0.5) +am07*(-0.7) + am08*(-0.8) + am1*(-1))/(a1+a08+a07+a05+a03+a02+a01+a0+am01+am02+am03+am05+am07+am08+am1);

disp('Wynik srodka ciezkosci: ');
disp(wynik);
enginePower = 5/60;
disp('Moc silnika :');
disp(enginePower);
disp('Ogrzewanie na sekunde: ');
ogrzewanieNaSek = wynik*enginePower;
if ogrzewanieNaSek > enginePower
    ogrzewanieNaSek = enginePower 
end
if  roznicaTemp < 0
   ogrzewanieNaSek = ogrzewanieNaSek*(-1);
end
disp(ogrzewanieNaSek);
// strumien ciepla(ubytek ciepla przy 
//ogrzewaniu)
subplot(2,2,1);
plot(tmp(1,:),tmp(2,:),'r');
plot(tmp(1,:),tmp(3,:),'b');
plot(tmp(1,:),tmp(4,:),'r');
plot(tmp(1,:),tmp(5,:),'g');
plot(tmp(1,:),tmp(6,:),'black');
mtlb_axis([-30 30 0 1.2]);
xlabel('Temperatura');
ylabel('Przynaleznosc');

subplot(2,2,3);
plot(y(1,:),y(2,:),'r');
plot(y(1,:),y(3,:),'b');
plot(y(1,:),y(4,:),'r');
plot(y(1,:),y(5,:),'g');
plot(y(1,:),y(6,:),'cyan');
plot(y(1,:),y(7,:),'magenta');
plot(y(1,:),y(8,:),'r');
plot(y(1,:),y(9,:),'b');
plot(y(1,:),y(10,:),'r');
plot(y(1,:),y(11,:),'magenta');
plot(y(1,:),y(12,:),'cyan');
plot(y(1,:),y(13,:),'g');
plot(y(1,:),y(14,:),'r');
plot(y(1,:),y(15,:),'b');
plot(y(1,:),y(16,:),'r');
mtlb_axis([-1.1 1.1 0 1.2]);
xlabel('Ogrzewanie');
ylabel('Przynaleznosc');

subplot(2,2,2);
plot(roznica(1,:),roznica(2,:),'r');
plot(roznica(1,:),roznica(3,:),'b');
plot(roznica(1,:),roznica(4,:),'g');
plot(roznica(1,:),roznica(5,:),'magenta');
plot(roznica(1,:),roznica(6,:),'cyan');
plot(roznica(1,:),roznica(7,:),'r');
plot(roznica(1,:),roznica(8,:),'g');
mtlb_axis([-30 30 0 1.2]);
xlabel('Roznica');
ylabel('Przynaleznosc');





