function Ep0 = relationattack(Gq,attack_times,N,all_eig)

Gq0 = Gq;

Gqreal =Gq0;
% for zlw = 1 : 1 :34
% Gqreal(zlw) =  Gq0(zlw+1);
% end
% Gqreal = Gqreal;   %���ٰ��� �ʼ ����ͨ����Ϊ1��  Gq
%   
for i = 1 : 1 : attack_times
    for j = 1 : 1 : N-i
         Gqreal(j) = Gq0(j+i);       
    end 
    Gqreal = Gqreal;
    Ep(i) = (sum(Gqreal))/N;
end  
Ep0 = (sum(Gq0))/N;
Ep = Ep;

for hhh = 1 : 1 : attack_times
    Ep_all(1) = Ep0;
    Ep_all(hhh+1) = Ep(hhh);
end

Ep_all = Ep_all;

rA_all = -all_eig;



x = rA_all'; %������ ������ֵ
y = Ep_all'; %������ ����ֵ




ax = gca;
ax.FontSize = 15;

plot(x,y,'LineWidth',2);

hold on;
plot(x,y,'*','LineWidth',2);
xlabel('������ֵ');
ylabel('����ֵ');
title({['N=1000��K=8'];['����С��������ʱ�������뵯�Թ�ϵ����ͼ']});
set(gcf,'color','white'); 
xlswrite('E:\����������\���棺С��������\N=1000��K=8\����\���ݡ��������Ե����ܱ�.xlsx',rA_all,'A3:A3000');
xlswrite('E:\����������\���棺С��������\N=1000��K=8\����\���ݡ��������Ե����ܱ�.xlsx',y,'B3:B3000');
saveas(gcf,['E:\����������\���棺С��������\N=1000��K=8\������ϵͼ\1.jpg']);

    
end
    
    