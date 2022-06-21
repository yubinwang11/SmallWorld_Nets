function [y,eig_pro_max,eig_attack_all,all_eig,all_degdes] = maxeigattack(A,attack_times,rand)
G = graph(A);

% L = laplacian(G);
% L_A = L;   % 其实是在求 拉普拉斯矩阵的特征值

% deg = degree(G)';%图B的节点的度
% [~,degdes] = sort(deg,'descend');%degdes 为节点度的降序排列后的矩阵 ,sort返回值第一个为节点的度 第二个为节点 即此行代码表示为将节点按照度从大到小排序
degdes = rand;

%eig_pro = eig(L_A);%原始网络特征值
eig_pro = eig(A);%原始网络特征值

eig_pro_max = max(eig_pro)';

B = A;
degdes_i = [];
for i = 1 : 1 :attack_times
    B(degdes(i),:) = 0;
    B(:,degdes(i)) = 0; 
%     G_update = graph(B);
%     L_B = laplacian(G_update);

%     eig_attack(i) = max(eig(L_B));
    eig_attack(i) = max(eig(B));
    
    degdes_i(i) = degdes(i);
end
eig_attack_all = eig_attack;
all_eig = [eig_pro_max;eig_attack_all'];
all_degdes = degdes_i;
x = (0:attack_times);
y = -all_eig;

% xlabel('攻击次数z');
% ylabel('r(A)');
% title({['Zachary Karate Club 网络'];['移除节点脆弱性变化曲线图']});
% ax = gca;
% ax.FontSize = 15;
% plot(x,y,'LineWidth',2);


end

