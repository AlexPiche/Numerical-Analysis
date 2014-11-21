function i = Richardson(matrix, objective, guess, w, tolerance)
   err = 1;
   i = 1;

   while err >= tolerance
       guess = guess + w*(objective - matrix*guess);
        err = abs([3/2;2;3/2]-guess);
        err = [1,1,1]*err;
        i = i+1;
    end

    disp([err]);
