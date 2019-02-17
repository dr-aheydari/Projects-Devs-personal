% Ali Heydari
% Game of Life--Simple Version



clear("all");
% Set the (square) grid dimensions to 50, and call it n
n = 50;

GRID = zeros(n,n);
for i = 1:n
    for j = 1:n
        X = rand;
        if X <= 0.6
            GRID(i,j) = 1;
        end
    end
end

up = zeros(1,n);
up (1,n) = 1;
c  = 2;
for i = 1:n-1
    up(1,i) = c;
    c = c+1;
end

down = zeros(1,n);
down (1,1) = n;
c  = 1;

for i = 2:n
    down(1,i) = c;
    c = c+1;
end
% 
colormap(winter(2));
% FIX THIS
neighbors = zeros(n,n);

for i = 1 : 1000
    neighbors = GRID(up,:) + GRID(up,down) + GRID(up,up) + GRID(:,up) ...
        + GRID(down,:) + GRID(down,down) + GRID(down,up) + GRID(:,down);
    
    GRID = (neighbors == 3) | GRID & neighbors == 2;
    
    

     image(GRID);
     text(18,-1, 'itveration');
     pause(0.1);

end
        
    
    
    
    
    
    
