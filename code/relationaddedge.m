function relationaddedge(A,new_new_all_w_core,new_new_m_core,N,Ep0,all_eig_addedage)


% G = graph(A);
% plot(G);

optimal_edage = 3; % 预先设定最优边数

for zlw = 1 : 1 : optimal_edage
    A(new_new_all_w_core(zlw,1),new_new_m_core(1,zlw)) = 1;
    A(new_new_m_core(1,zlw),new_new_all_w_core(zlw,1)) = 1;
    %C1 = A;
    [Ep,Gq] = maxcom(A,N);
    Ep_addedge(zlw) =Ep;
    %G = graph(C1);
    %plot(G);

end

Ep_addedge =  Ep_addedge;

for hhh = 1 : 1 : (optimal_edage)
    Ep_all(1) = Ep0;
    Ep_all(hhh+1) = Ep_addedge(hhh);
end

Ep_all = Ep_all;
x =  -all_eig_addedage; % 加边脆弱性值
y = Ep_all'; %加边弹性值

ax = gca;
ax.FontSize = 15;
plot(x,y,'LineWidth',2);

hold on;
plot(x,y,'*','LineWidth',2);
xlabel('脆弱性值');
ylabel('弹性值');
title({['Zachary Karate Club 网络'];['加边时脆弱性与弹性关系曲线图']});

xlswrite('E:\实验室\仿真\仿真七：找关系\规律\Zachary Karate Club\度攻击后加边.xlsx',x,'A1:A4');
xlswrite('E:\实验室\仿真\仿真七：找关系\规律\Zachary Karate Club\度攻击后加边.xlsx',y,'B1:B4');


end

