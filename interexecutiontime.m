 l=length(t);
T1=0;T2=0;T3=0;T4=0;

 
utemp1 = uz(1); 
Ttemp1 = 0;
sample1 = 0;

T1(1) = 0; 
jold1 = 1;

for o=2:l
    T1(o)=0;
    if uz(o)~=utemp1  
        utemp1=uz(o); 
        T1(jold1)=t(o)-Ttemp1;
        jold1 = o;   
        Ttemp1=t(o);
        sample1=sample1+1;
    end;
end;

sample1



utemp2 = uphi(1); 
Ttemp2 = 0;
sample2 = 0;

T2(1) = 0; 
jold2 = 1;

for j=2:l
    T2(j)=0;
    if uphi(j)~=utemp2  
        utemp2=uphi(j); 
        T2(jold2)=t(j)-Ttemp2; 
        jold2 = j;   
        Ttemp2=t(j);  
        sample2=sample2+1;
    end;
end;

sample2

utemp3 = utheta(1);
Ttemp3 = 0;
sample3 = 0;

T3(1) = 0; 
jold3 = 1;

for o=2:l
    T3(o)=0;
    if utheta(o)~=utemp3  
        utemp3=utheta(o); 
        T3(jold3)=t(o)-Ttemp3; 
        jold3 = o;   
        Ttemp3=t(o);  
        sample3=sample3+1;
    end;
end;

sample3

utemp4 = upsi(1); 
Ttemp4 = 0;
sample4 = 0;

T4(1) = 0; 
jold4 = 1;

for i=2:l
    T4(i)=0;
    if upsi(i)~=utemp4  
        utemp4=upsi(i); 
        T4(jold4)=t(i)-Ttemp4; 
        jold4 = i;   
        Ttemp4=t(i); 
        sample4=sample4+1;
    end;
end;

sample4

figure
subplot(4,1,1); 
plot(t,T1,'k'); 
ylabel('T_z[sec]');
grid on
subplot(4,1,2); 
plot(t,T2,'k'); 
ylabel('T_{\phi}[sec]');
grid on
subplot(4,1,3); 
plot(t,T3,'k'); 
ylabel('T_{\theta}[sec]');
grid on
subplot(4,1,4); 
plot(t,T4,'k'); 
ylabel('T_{\psi}[sec]');
grid on


figure
subplot(4,1,1); 
plot(t,z,'k')
grid on
%xlabel('time')
ylabel('z')
subplot(4,1,2); 
plot(t,phi,'k')
grid on
%xlabel('time')
ylabel('\phi')
subplot(4,1,3); 
plot(t,theta,'k')
grid on
%xlabel('time')
ylabel('\theta')
subplot(4,1,4); 
plot(t,psi,'k')
grid on
xlabel('time')
ylabel('\psi')


