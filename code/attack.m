function [B,k_max,degdes] = attack(A,N,rand)

B = A;
G = graph(B);

%%%%�������
%degdes = randperm(N);
degdes = rand;

%���նȹ���
%deg = degree(G)';%ͼB�Ľڵ�Ķ�
%[~,degdes] = sort(deg,'descend');%degdes Ϊ�ڵ�ȵĽ������к�ľ��� ,sort����ֵ��һ��Ϊ�ڵ�Ķ� �ڶ���Ϊ�ڵ� �����д����ʾΪ���ڵ㰴�նȴӴ�С����

B(degdes(1),:) = 0;
B(:,degdes(1)) = 0;
G_update = graph(B); %���º��ͼB
%plot(G_update);
deg_com = degree(G_update)'; % �������ͼ �ڵ�Ķ�
k_max = (sum(deg_com)/size(B,1))+1;
rand(1) = [];
rand = rand;
degdes = rand;





    

end

