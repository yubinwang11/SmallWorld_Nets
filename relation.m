
% X1 = xlsread('E:\ʵ����\����\�����ʮһ���ޱ������\N=100��E=500\����\���ݡ���������.xlsx','Sheet1','L3:L60');
% Y1 = xlsread('E:\ʵ����\����\�����ʮһ���ޱ������\N=100��E=500\����\���ݡ�������.xlsx','Sheet1','L3:L60');

X1 = xlsread('E:\����������\���棺�ޱ������\N=100��E=300\����\���ݡ���������.xlsx','Sheet1','L3:L53');
Y1 = xlsread('E:\����������\���棺�ޱ������\N=100��E=300\����\���ݡ�������.xlsx','Sheet1','L3:L53');
% X2 = xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.2\���ݡ���������.xlsx','Sheet1','L3:L78');
% Y2 = xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.2\���ݡ�������.xlsx','Sheet1','L3:L78');
% 
% X3= xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.3\���ݡ���������.xlsx','Sheet1','L3:L83');
% Y3 = xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.3\���ݡ�������.xlsx','Sheet1','L3:L83');
% 
% X4= xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.4\���ݡ���������.xlsx','Sheet1','L3:L84');
% Y4 = xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.4\���ݡ�������.xlsx','Sheet1','L3:L84');
% 
% X5= xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.5\���ݡ���������.xlsx','Sheet1','L3:L87');
% Y5 = xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.5\���ݡ�������.xlsx','Sheet1','L3:L87');
% 
% X6= xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.6\���ݡ���������.xlsx','Sheet1','L3:L89');
% Y6 = xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.6\���ݡ�������.xlsx','Sheet1','L3:L89');
% 
% X7= xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.7\���ݡ���������.xlsx','Sheet1','L3:L89');
% Y7 = xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.7\���ݡ�������.xlsx','Sheet1','L3:L89');
% 
% X8= xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.8\���ݡ���������.xlsx','Sheet1','L3:L90');
% Y8 = xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.8\���ݡ�������.xlsx','Sheet1','L3:L90');
% 
% X9= xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.9\���ݡ���������.xlsx','Sheet1','L3:L91');
% Y9 = xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=0.9\���ݡ�������.xlsx','Sheet1','L3:L91');
% 
% X10= xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=1\���ݡ��������Ե����ܱ�.xlsx','Sheet1','A3:A92');
% Y10 = xlsread('H:\������\ʵ�������ϱ���\����\����ʮһ���������\N=100��p=1\���ݡ��������Ե����ܱ�.xlsx','Sheet1','B3:B92');

figure1 = figure('Color',[1 1 1]);

% ���� axes
axes1 = axes('Parent',figure1,...
    'Position',[0.127312295973885 0.11 0.777687704026117 0.852140992167102]);
hold(axes1,'on');

% ���� loglog
loglog(X1,Y1,'DisplayName','N=100��E=300','Marker','*','LineWidth',2);

% % ���� loglog
% loglog(X2,Y2,'DisplayName','N=100,r=0.2','Marker','*','LineWidth',2);
% 
% % ���� loglog
% loglog(X3,Y3,'DisplayName','N=100,r=0.3','Marker','*','LineWidth',2);
% 
% % ���� loglog
% loglog(X4,Y4,'DisplayName','N=100,r=0.4','Marker','*','LineWidth',2);
% 
% % ���� loglog
% loglog(X5,Y5,'DisplayName','N=100,r=0.5','Marker','*','LineWidth',2);
% 
% % ���� loglog
% loglog(X6,Y6,'DisplayName','N=100,r=0.6','Marker','*','LineWidth',2);
% 
% % ���� loglog
% loglog(X7,Y7,'DisplayName','N=100,r=0.7','Marker','*','LineWidth',2);
% 
% % ���� loglog
% loglog(X8,Y8,'DisplayName','N=100,r=0.8','Marker','*','LineWidth',2,...
%     'Color',[0.749019622802734 0.749019622802734 0]);
% 
% % ���� loglog
% loglog(X9,Y9,'DisplayName','N=100,r=0.9','Marker','*','LineWidth',2,...
%     'Color',[0.0705882385373116 0.211764708161354 0.141176477074623]);
% 
% % ���� loglog
% loglog(X10,Y10,'DisplayName','N=100,r=1','Marker','*','LineWidth',2,...
%     'Color',[1 0.600000023841858 0.7843137383461]);

% ���� ylabel
ylabel('resilience','FontSize',24,'FontName','Times New Roman');

% ���� xlabel
xlabel('fragility','FontSize',24,'FontName','Times New Roman');

box(axes1,'on');
hold(axes1,'off');
% ������������������
set(axes1,'XMinorTick','on','XScale','log','YMinorTick','on','YScale','log');
% ���� legend
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.126982653580256 0.111332646732242 0.249291779425935 0.45430578655434],...
    'FontSize',16,...
    'FontName','Times New Roman');


saveas(gcf,['E:\����������\���棺�ޱ������\N=100��E=300\������ϵͼ\1.png']);

