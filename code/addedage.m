function  [optimal_edage,new_new_all_w_core,new_new_m_core,Gq] = addedage(B1,m_core,all_w_core,deg_m_core,deg_all_w_core,N,A)
G = graph(B1);
optimal_edage = 3; % Ԥ���趨���ű���
w_count = sum(all_w_core ~= 0 , 2)';
[~,des_w_count] = sort(w_count,'descend');
w_list = des_w_count;
new_all_w_core = all_w_core(w_list,:); %���սڵ�����Ӵ�С˳���������к������
new_deg_all_w_core = deg_all_w_core(w_list,:); %���սڵ�����Ӵ�С˳���������к�����˵Ķ�
[r,c] = size(new_deg_all_w_core); % ��ȡ���˶Ⱦ��������������
for i = 1 : 1 : r
    for j = 1 : 1 : c
         if new_deg_all_w_core(i,j) == 0
             new_deg_all_w_core(i,j) = 10000;
         end
    end 
end
   mm = new_deg_all_w_core;  % ��0��λ�û���һ���ܴ������ʹ�����������
[~,deg_w_list] = sort(mm,2,'ascend'); % �õ����˶Ⱦ��������˳��

for p = 1 : 1: r
    for q = 1 : 1 :c
        new_new_all_w_core(p,q) = new_all_w_core(p,deg_w_list(p,q));  %���նȴ�С���������� ���˽ڵ����
    end
end
   
[~,des_m_count] = sort(deg_m_core,'ascend');
m_list = des_m_count;
new_new_m_core = m_core(m_list,:);% �����˽ڵ㰴�� �ȴ�С������� ��������

new_new_m_core = new_new_m_core';

C1 = A;
[Ep,Gq] = maxcom(C1,N);
hold on;


for zlw = 1 : 1 : optimal_edage
    A(new_new_all_w_core(zlw,1),new_new_m_core(1,zlw)) = 1;
    A(new_new_m_core(1,zlw),new_new_all_w_core(zlw,1)) = 1;
    %C1 = A;
    [Ep,Gq] = maxcom(A,N);
    %G = graph(C1);
    %plot(G);

end

end

