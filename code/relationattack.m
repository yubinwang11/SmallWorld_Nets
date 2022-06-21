function Ep0 = relationattack(Gq,attack_times,N,all_eig)

Gq0 = Gq;

Gqreal =Gq0;
% for zlw = 1 : 1 :34
% Gqreal(zlw) =  Gq0(zlw+1);
% end
% Gqreal = Gqreal;   %不再包含 最开始 的连通分量为1的  Gq
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



x = rA_all'; %横坐标 脆弱性值
y = Ep_all'; %纵坐标 弹性值




ax = gca;
ax.FontSize = 15;

plot(x,y,'LineWidth',2);

hold on;
plot(x,y,'*','LineWidth',2);
xlabel('脆弱性值');
ylabel('弹性值');
title({['N=1000，K=8'];['攻击小世界网络时脆弱性与弹性关系曲线图']});
set(gcf,'color','white'); 
xlswrite('E:\张栎文论文\仿真：小世界网络\N=1000，K=8\数据\数据——脆弱性弹性总表.xlsx',rA_all,'A3:A3000');
xlswrite('E:\张栎文论文\仿真：小世界网络\N=1000，K=8\数据\数据——脆弱性弹性总表.xlsx',y,'B3:B3000');
saveas(gcf,['E:\张栎文论文\仿真：小世界网络\N=1000，K=8\攻击关系图\1.jpg']);

    
end
    
    