function all_eig_addedage = maxeigaddedage(optimal_edage ,A,new_new_all_w_core,new_new_m_core,eig_pro_max)

B = A;
for zlw = 1 : 1 : optimal_edage
    B(new_new_all_w_core(zlw,1),new_new_m_core(1,zlw)) = 1;
    B(new_new_m_core(1,zlw),new_new_all_w_core(zlw,1)) = 1;
    eig_addeadge(zlw) = max(eig(B));  
end
eig_addeadge_all = eig_addeadge;
all_eig_addedage = [eig_pro_max;eig_addeadge_all'];
x = (0:optimal_edage);
y = -all_eig_addedage;

% xlabel('�ӱ�����a');
% ylabel('r(A)');
% title({['Zachary Karate Club ����'];['�ӱߴ����Ա仯����ͼ']});
% 
% ax = gca;
% ax.FontSize = 15;
% plot(x,y,'LineWidth',2);



end

