function [Ep,Gq] = maxcom(A,N,rand)

B = A;
G = graph(B);
%plot(G);
deg = degree(G)';%图B的节点的度
K0 = sum(deg.^2)/sum(deg);
qc0 = 1-1/(K0-1);
m = N;
q = 0;
x = 0;

for i =2: 1 : (N+1)
    G_update = graph(B);
%     deg = degree(G_update);
%     [~,degdes] = sort(deg,'descend');
    degdes = rand;
    B(degdes(1),:) = 0;
    B(:,degdes(1)) = 0;
    G_update = graph(B);
%    % plot(G_update);
%    
%    
%     deg_new = degree(G_update);
%     k(i-1) = sum(deg_new)/N;  %节点平均度
%     %Pinf(i) = 0.1*(1-exp(-k(i-1)*Pinf(i))) ;
%     x = k(i-1);
%     y = sym( 'y' );
%     y = solve(y == 0.2*(1-exp(-x*y)),y);
%     
%     x = 6;
%     y = sym( 'y' );
%     y = solve(y*y == 0.1*x*y,y);
% a = sym( 'a' );
% b = sym( 'b' );
% x = sym( 'x' );
% y = sym( 'y' );
% [x,y] = solve(a*x-b*y== 1,a*x+b*y==3,x,y);


%     syms x y;
%     
%     solve(y == 0.1*(1-exp(-x*y)),y);
    
    
%     syms Pinf p k ;
%     B = solve(Pinf-p*(1-exp(-k*Pinf)),Pinf,'Real',true);
%     y = sym( 'y' );
%     solve(str2sym('y == 0.1*(1-exp(-x*y))'),y);


    rand(1) = [];
    bins = conncomp(G_update);
    num = unique(bins);
    for j = 1 : size(num,2)
        node_com = find(bins(:) == j);
        if size(node_com,1) > 1
            num_com(j) = sum(bins(:) == j);
        end    
    end
    m(i) = max(max(num_com));
    num_com = 0;    
end
m = m/N;

m(1) = [];
m = m;
Ep = (sum(m) ) / N;
y = m; % y轴值
Gq = y;
x(1) = 0;
for n = 2:1 : (N+1)
    q(n) = (n-1) / N;
end
x = q;



% plot(x,y,'LineWidth',2);
% ax = gca;
% ax.FontSize = 15;
% xlabel('移除节点比例q');
% ylabel('最大连通分量比例G(q)');
% title({('Zachary Karate Club 网络') ;('加边弹性势能曲线图')});



end

