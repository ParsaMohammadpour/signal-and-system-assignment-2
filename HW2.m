people = zeros (50 , 50);

for i=1 : 50
    for j =1 : 50
        people(i, j) = randi(3);
    end
end
colormap([0 0 1 ; 0 1 0 ; 1 0 0]);
subplot(3,2,1);
imagesc(people);
title('Initializing');
for N=1:500
    s ='salam';
    s
    for k=1:625
        i =randi(50);
        j =randi(50);
        if ((i > 1) && (j > 1) && (i < 50) && (j < 50))
            while 1
                i_neighbor = randi(3) - 2;
                j_neighbor = randi(3) - 2;
                if ((i_neighbor ~= 0) || (i_neighbor ~= 0))
                    break;
                end
            end
            people(i, j) = people(i_neighbor + i , j_neighbor + j );
        end
        if((i == 1) && (j == 1))
            while 1
                i_neighbor = randi(2) - 1;
                j_neighbor = randi(2) - 1;
                if ((i_neighbor ~= 0) || (i_neighbor ~= 0))
                    break;
                end
            end
            people(i, j) = people(i_neighbor + i , j_neighbor + j );
        end
       if (i == 1 && j == 50)
           while 1
                i_neighbor = randi(2) - 1;
                j_neighbor = randi(2) - 1;
                if ((i_neighbor ~= 0) || (i_neighbor ~= 0))
                    break;
                end
            end
            people(i, j) = people(i_neighbor + i , j - j_neighbor );
       end
       if(i == 50 && j == 1)
          while 1
                i_neighbor = randi(2) - 1;
                j_neighbor = randi(2) - 1;
                if ((i_neighbor ~= 0) || (i_neighbor ~= 0))
                    break;
                end
            end
            people(i, j) = people(i - j_neighbor , j_neighbor + j ); 
       end
      if(i == 50 && j == 50)
         while 1
                i_neighbor = randi(2) - 1;
                j_neighbor = randi(2) - 1;
                if ((i_neighbor ~= 0) || (i_neighbor ~= 0))
                    break;
                end
            end
            people(i, j) = people(i - i_neighbor , j - j_neighbor ); 
      end
      if (i == 1 && j ~= 50 && j ~= 1)
          while 1
                i_neighbor = randi(2) - 1;
                j_neighbor = randi(3) - 2;
                if ((i_neighbor ~= 0) || (i_neighbor ~= 0))
                    break;
                end
            end
            people(i, j) = people(i_neighbor + i , j_neighbor + j );
      end
      if(i == 50 && j~= 1 && j~= 50)
         while 1
                i_neighbor = randi(2) - 1;
                j_neighbor = randi(3) - 2;
                if ((i_neighbor ~= 0) || (i_neighbor ~= 0))
                    break;
                end
            end
            people(i, j) = people( i - i_neighbor , j_neighbor + j ); 
      end
      if(j == 1 && i~=50 && i~=1)
          while 1
                i_neighbor = randi(3) - 2;
                j_neighbor = randi(2) - 1;
                if ((i_neighbor ~= 0) || (i_neighbor ~= 0))
                    break;
                end
            end
            people(i, j) = people(i_neighbor + i , j_neighbor + j );
      end
      if(j == 50 && i~=1 && i~=50)
         while 1
                i_neighbor = randi(3) - 2;
                j_neighbor = randi(2) - 1;
                if ((i_neighbor ~= 0) || (i_neighbor ~= 0))
                    break;
                end
            end
            people(i, j) = people(i_neighbor + i , j - j_neighbor ); 
      end
    end
    if(N == 100)
        subplot(3,2,2);
        imagesc(people);
        title('Step : 100');
    end
    if(N == 200)
        subplot(3,2,3);
        imagesc(people);
        title('Step : 200');
    end
    if(N == 300)
        subplot(3,2,4);
        imagesc(people);
        title('Step : 300');
    end
    if(N == 400)
        subplot(3,2,5);
        imagesc(people);
        title('Step : 400');
    end
    if(N == 500)
        subplot(3,2,6);
        imagesc(people);
        title('Step : 500');
    end
end