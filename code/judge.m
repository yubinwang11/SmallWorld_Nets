function  [B1,attack_times] = judge(G_update,B,A,k_max,N,degdes)

attack_times = 0;
while 1
    rand = degdes;
    if k_max > 2
        A = B;
        [B,k_max,degdes] = attack(A,N,rand);
        attack_times = attack_times + 1;
    end
    if k_max <= 2
       B1 = A; % B1Îª Í£Ö¹¹¥»÷ºóµÄÁÚ½Ó¾ØÕó
       G = graph(B1);
      % plot(G);
        break;
    end
end    
end

