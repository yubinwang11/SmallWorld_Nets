function [B,k_max,degdes] = attack(A,N,rand)

B = A;
G = graph(B);

%%%%随机攻击
%degdes = randperm(N);
degdes = rand;

%按照度攻击
%deg = degree(G)';%图B的节点的度
%[~,degdes] = sort(deg,'descend');%degdes 为节点度的降序排列后的矩阵 ,sort返回值第一个为节点的度 第二个为节点 即此行代码表示为将节点按照度从大到小排序

B(degdes(1),:) = 0;
B(:,degdes(1)) = 0;
G_update = graph(B); %更新后的图B
%plot(G_update);
deg_com = degree(G_update)'; % 攻击后的图 节点的度
k_max = (sum(deg_com)/size(B,1))+1;
rand(1) = [];
rand = rand;
degdes = rand;





    

end

