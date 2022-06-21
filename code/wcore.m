function [all_w_core,deg_all_w_core] = wcore(B2,m_core,N)

G_new = graph(B2); % ֹͣ�������ͼ
%plot(G_new);
bins = conncomp(G_new); % ֹͣ�������ͼ����ͨ�� 
num = unique(bins); % ֹͣ�������ͼ����ͨ������� 

deg_com = degree(G_new)'; % ֹͣ�������ͼ �ڵ�Ķ� 
rel_num = size(num,2) - size(find(deg_com == 0),2);
deg_small_com = 0;
k = 0;
NJ = 0;
A1 = zeros(N);

k=1;
for i = 1:size(num,2)
    A1 = zeros(N);
    node_com = find(bins(:) == i);
    if size(node_com,1) > 1
       
        if size(intersect(m_core,node_com),1) ~= size(node_com,1)
            A1(node_com,:) = B2(node_com,:);
            A1(:,node_com) = B2(:,node_com);
            [w_core,deg_w_core] = findwcore(A1);


            for j = 1:size(w_core,2)
            all_w_core(k,j) = w_core(j);
            deg_all_w_core(k,j) = deg_w_core(j);

            end
            k=k+1;
        end
      
    end
  

end
end



