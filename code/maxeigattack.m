function [y,eig_pro_max,eig_attack_all,all_eig,all_degdes] = maxeigattack(A,attack_times,rand)
G = graph(A);

% L = laplacian(G);
% L_A = L;   % ��ʵ������ ������˹���������ֵ

% deg = degree(G)';%ͼB�Ľڵ�Ķ�
% [~,degdes] = sort(deg,'descend');%degdes Ϊ�ڵ�ȵĽ������к�ľ��� ,sort����ֵ��һ��Ϊ�ڵ�Ķ� �ڶ���Ϊ�ڵ� �����д����ʾΪ���ڵ㰴�նȴӴ�С����
degdes = rand;

%eig_pro = eig(L_A);%ԭʼ��������ֵ
eig_pro = eig(A);%ԭʼ��������ֵ

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

% xlabel('��������z');
% ylabel('r(A)');
% title({['Zachary Karate Club ����'];['�Ƴ��ڵ�����Ա仯����ͼ']});
% ax = gca;
% ax.FontSize = 15;
% plot(x,y,'LineWidth',2);


end

