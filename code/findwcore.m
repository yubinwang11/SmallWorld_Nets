function [w_core,deg_w_core] = findwcore(A1)

    A = A1;
while 1
    
    G_new = graph (A1);
    deg_small_com = degree(G_new)'; % �������ͼ �ڵ�Ķ�
    k = sum(deg_small_com.^2)/sum(deg_small_com); 
    if k > 2
    [~,degdes] = sort(deg_small_com,'descend');%degdes Ϊ�ڵ�ȵĽ������к�ľ��� ,sort����ֵ��һ��Ϊ�ڵ�Ķ� �ڶ���Ϊ�ڵ� �����д����ʾΪ���ڵ㰴�նȴӴ�С����
   A(degdes(1),:) = 0;
   A(:,degdes(1)) = 0;
   A1=A;
    end
    if k < 2
        bins = conncomp(G_new); % ֹͣ�������ͼ����ͨ�� 
        num = unique(bins); % ֹͣ�������ͼ����ͨ������� 
        k = 1;
        for i = 1:size(num,2)
            node_com = find(bins(:) == i);
                if size(node_com,1) > 1

                     deg_small_com = sum(A1(node_com,:)); % С��ͨͼ�ڵ�Ķ�
                     deg_small_com(find(deg_small_com == 0)) = [];
                     k_small(k) = sum(deg_small_com.^2)/sum(deg_small_com); 
                     k_node(k) = i;
                     k = k + 1;               
                end
        end
        if size(k_node,2) == 1 
            w_core = 0;
            w_core = find(bins(:) == k_node(1))';
            deg_w_core = deg_small_com;

        end
        if size(k_node,2) > 1           
            [~, k_des] = sort(k_small,'descend' ); 
            w_core = 0;
            w_core = find(bins(:) == k_node(k_des(1)))'; 
            deg_small_com = sum(A1(w_core,:));
            deg_small_com(find(deg_small_com == 0)) = [];
            deg_w_core = deg_small_com;

        end   
        break;
    end
    
end


   

    
    
    
    
    
    
    
    
end

