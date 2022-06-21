function [B2,m_core,deg_m_core] = mcore(B1)
B2 = B1;
G_new = graph(B1); % ֹͣ�������ͼ
bins = conncomp(G_new); % ֹͣ�������ͼ����ͨ�� 
num = unique(bins); % ֹͣ�������ͼ����ͨ������� 
deg_com = degree(G_new)'; % ֹͣ�������ͼ �ڵ�Ķ� 

    for i=1:size(num,2)
        node_com = find(bins(:) == i);
        if size(node_com,1) > 1
             NJ=size(node_com,1);
            for j = 1:NJ
                deg_small_com(j) = sum(B1(node_com(j),:)); 
            end
            k(i) = sum(deg_small_com.^2)/sum(deg_small_com);
            if k(i) == 2
                m_core = node_com; 
                deg_m_core = deg_small_com;
                break;
            end 
            a = abs(2 - k(1));
            if i > 1
                k = abs(2 - k(i));
                if k < a
                    m_core = 0;
                    deg_m_core = 0;
                    m_core = node_com;
                    deg_m_core = deg_small_com;
                end
            end
         end
            
            
%             if k(i) == 2
%                m_core = node_com;
%                deg_m_core = deg_small_com;
%             end            

        end
end






