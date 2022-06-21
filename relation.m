
% X1 = xlsread('E:\实验室\仿真\仿真二十一：无标度网络\N=100，E=500\数据\数据——脆弱性.xlsx','Sheet1','L3:L60');
% Y1 = xlsread('E:\实验室\仿真\仿真二十一：无标度网络\N=100，E=500\数据\数据——弹性.xlsx','Sheet1','L3:L60');

X1 = xlsread('E:\张栎文论文\仿真：无标度网络\N=100，E=300\数据\数据——脆弱性.xlsx','Sheet1','L3:L53');
Y1 = xlsread('E:\张栎文论文\仿真：无标度网络\N=100，E=300\数据\数据——弹性.xlsx','Sheet1','L3:L53');
% X2 = xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.2\数据——脆弱性.xlsx','Sheet1','L3:L78');
% Y2 = xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.2\数据——弹性.xlsx','Sheet1','L3:L78');
% 
% X3= xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.3\数据——脆弱性.xlsx','Sheet1','L3:L83');
% Y3 = xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.3\数据——弹性.xlsx','Sheet1','L3:L83');
% 
% X4= xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.4\数据——脆弱性.xlsx','Sheet1','L3:L84');
% Y4 = xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.4\数据——弹性.xlsx','Sheet1','L3:L84');
% 
% X5= xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.5\数据——脆弱性.xlsx','Sheet1','L3:L87');
% Y5 = xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.5\数据——弹性.xlsx','Sheet1','L3:L87');
% 
% X6= xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.6\数据——脆弱性.xlsx','Sheet1','L3:L89');
% Y6 = xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.6\数据——弹性.xlsx','Sheet1','L3:L89');
% 
% X7= xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.7\数据——脆弱性.xlsx','Sheet1','L3:L89');
% Y7 = xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.7\数据——弹性.xlsx','Sheet1','L3:L89');
% 
% X8= xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.8\数据——脆弱性.xlsx','Sheet1','L3:L90');
% Y8 = xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.8\数据——弹性.xlsx','Sheet1','L3:L90');
% 
% X9= xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.9\数据——脆弱性.xlsx','Sheet1','L3:L91');
% Y9 = xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=0.9\数据——弹性.xlsx','Sheet1','L3:L91');
% 
% X10= xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=1\数据——脆弱性弹性总表.xlsx','Sheet1','A3:A92');
% Y10 = xlsread('H:\张栎文\实验室资料备份\仿真\仿真十一：随机网络\N=100，p=1\数据——脆弱性弹性总表.xlsx','Sheet1','B3:B92');

figure1 = figure('Color',[1 1 1]);

% 创建 axes
axes1 = axes('Parent',figure1,...
    'Position',[0.127312295973885 0.11 0.777687704026117 0.852140992167102]);
hold(axes1,'on');

% 创建 loglog
loglog(X1,Y1,'DisplayName','N=100，E=300','Marker','*','LineWidth',2);

% % 创建 loglog
% loglog(X2,Y2,'DisplayName','N=100,r=0.2','Marker','*','LineWidth',2);
% 
% % 创建 loglog
% loglog(X3,Y3,'DisplayName','N=100,r=0.3','Marker','*','LineWidth',2);
% 
% % 创建 loglog
% loglog(X4,Y4,'DisplayName','N=100,r=0.4','Marker','*','LineWidth',2);
% 
% % 创建 loglog
% loglog(X5,Y5,'DisplayName','N=100,r=0.5','Marker','*','LineWidth',2);
% 
% % 创建 loglog
% loglog(X6,Y6,'DisplayName','N=100,r=0.6','Marker','*','LineWidth',2);
% 
% % 创建 loglog
% loglog(X7,Y7,'DisplayName','N=100,r=0.7','Marker','*','LineWidth',2);
% 
% % 创建 loglog
% loglog(X8,Y8,'DisplayName','N=100,r=0.8','Marker','*','LineWidth',2,...
%     'Color',[0.749019622802734 0.749019622802734 0]);
% 
% % 创建 loglog
% loglog(X9,Y9,'DisplayName','N=100,r=0.9','Marker','*','LineWidth',2,...
%     'Color',[0.0705882385373116 0.211764708161354 0.141176477074623]);
% 
% % 创建 loglog
% loglog(X10,Y10,'DisplayName','N=100,r=1','Marker','*','LineWidth',2,...
%     'Color',[1 0.600000023841858 0.7843137383461]);

% 创建 ylabel
ylabel('resilience','FontSize',24,'FontName','Times New Roman');

% 创建 xlabel
xlabel('fragility','FontSize',24,'FontName','Times New Roman');

box(axes1,'on');
hold(axes1,'off');
% 设置其余坐标区属性
set(axes1,'XMinorTick','on','XScale','log','YMinorTick','on','YScale','log');
% 创建 legend
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.126982653580256 0.111332646732242 0.249291779425935 0.45430578655434],...
    'FontSize',16,...
    'FontName','Times New Roman');


saveas(gcf,['E:\张栎文论文\仿真：无标度网络\N=100，E=300\对数关系图\1.png']);

