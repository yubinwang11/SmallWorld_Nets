function relationaddedge(A,new_new_all_w_core,new_new_m_core,N,Ep0,all_eig_addedage)


% G = graph(A);
% plot(G);

optimal_edage = 3; % Ԥ���趨���ű���

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
x =  -all_eig_addedage; % �ӱߴ�����ֵ
y = Ep_all'; %�ӱߵ���ֵ

ax = gca;
ax.FontSize = 15;
plot(x,y,'LineWidth',2);

hold on;
plot(x,y,'*','LineWidth',2);
xlabel('������ֵ');
ylabel('����ֵ');
title({['Zachary Karate Club ����'];['�ӱ�ʱ�������뵯�Թ�ϵ����ͼ']});

xlswrite('E:\ʵ����\����\�����ߣ��ҹ�ϵ\����\Zachary Karate Club\�ȹ�����ӱ�.xlsx',x,'A1:A4');
xlswrite('E:\ʵ����\����\�����ߣ��ҹ�ϵ\����\Zachary Karate Club\�ȹ�����ӱ�.xlsx',y,'B1:B4');


end

