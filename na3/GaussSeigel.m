function iter = GaussSeigel(row1, row2, row3, guess, tolerance)
   format('long', 'g');
   err = 1;
   x1 = guess(1);
   x2 = guess(2);
   x3 = guess(3);
   i = 1;
    while err >= tolerance
        x1(i+1) = (row1(4) - x2(i)*row1(2) - x3(i)*row1(3))/row1(1);
        x2(i+1) = (row2(4) - x1(i+1)*row2(1)-x3(i)*row2(3))/row2(2);
        x3(i+1) = (row3(4) - x1(i+1)*row3(1) - x2(i+1)*row3(2))/row3(3)
        err = abs((x2(i+1)-x2(i))/2);
        i = i+1;
    end
    disp([x1(i)]);
    disp([x2(i)]);
    disp([x3(i)]);

