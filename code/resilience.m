clear;
clc;
N=1000;
K = 8;
beta = 0.5;
% Nodes = N;
% mlinks = 300;
% a=100;    %aΪѭ������
%�����������
%  p=0.05;
% A = zeros(N,N);  %adjmexΪ�ڽӾ���
% for m=1:N
%     for n=m+1:N
%         if(rand(1,1)<p)
%             A(m,n)=1;
%             A(n,m)=1;
%          end
%     end
% end
%�����������ϡ������
% seed = sparse(A);
% 
% save('seedten.mat','seed');
% G = graph(A);
% plot(G);

%�����ޱ������
% SFNet = SFNG(Nodes, mlinks, seed);
%  G = graph(SFNet);
%  plot(G);
% A = SFNet;

%���� С��������
 h = WattsStrogatz(N,K,beta);
 A =  adjacency(h) ;
 A = full (A);
save('Aone.mat','A');
rand = randperm(N);
wyb = rand;
xlswrite('E:\����������\���棺С��������\N=1000��K=8\����\rand.xlsx',wyb','A1:A3000');
[B,k_max,degdes] = attack(A,N,rand);
G_update = graph(B);

[B1,attack_times] = judge(G_update,B,A,k_max,N,degdes);
%[B2,m_core,deg_m_core] = mcore(B1);
%[all_w_core,deg_all_w_core] = wcore(B2,m_core,N); % ����weak cores  ;����weak cores ����Ӧ�ڵ�Ķ�

[Ep,Gq] = maxcom(A,N,rand);  % ��ʼ��������
[y,eig_pro_max,eig_attack_all,all_eig,all_degdes] = maxeigattack(A,attack_times,rand);
Ep0 = relationattack(Gq,attack_times,N,all_eig); 

%hold on;
%[optimal_edage,new_new_all_w_core,new_new_m_core,Gq] = addedage(B1,m_core,all_w_core,deg_m_core,deg_all_w_core,N,A);

y = y';
%all_eig_addedage = maxeigaddedage(optimal_edage ,A,new_new_all_w_core,new_new_m_core,eig_pro_max);

%relationaddedge(A,new_new_all_w_core,new_new_m_core,N,Ep0,all_eig_addedage);













%T = addedage(B1,m_core,all_w_core);