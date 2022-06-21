function  [optimal_edage,new_new_all_w_core,new_new_m_core,Gq] = addedage(B1,m_core,all_w_core,deg_m_core,deg_all_w_core,N,A)
G = graph(B1);
optimal_edage = 3; % 预先设定最优边数
w_count = sum(all_w_core ~= 0 , 2)';
[~,des_w_count] = sort(w_count,'descend');
w_list = des_w_count;
new_all_w_core = all_w_core(w_list,:); %按照节点个数从大到小顺序重新排列后的弱核
new_deg_all_w_core = deg_all_w_core(w_list,:); %按照节点个数从大到小顺序重新排列后的弱核的度
[r,c] = size(new_deg_all_w_core); % 提取弱核度矩阵的行数和列数
for i = 1 : 1 : r
    for j = 1 : 1 : c
         if new_deg_all_w_core(i,j) == 0
             new_deg_all_w_core(i,j) = 10000;
         end
    end 
end
   mm = new_deg_all_w_core;  % 把0的位置换成一个很大的数，使其排序在最后
[~,deg_w_list] = sort(mm,2,'ascend'); % 得到弱核度矩阵的排列顺序

for p = 1 : 1: r
    for q = 1 : 1 :c
        new_new_all_w_core(p,q) = new_all_w_core(p,deg_w_list(p,q));  %按照度从小到大排序后的 弱核节点矩阵
    end
end
   
[~,des_m_count] = sort(deg_m_core,'ascend');
m_list = des_m_count;
new_new_m_core = m_core(m_list,:);% 对主核节点按照 度从小到大进行 升序排列

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

