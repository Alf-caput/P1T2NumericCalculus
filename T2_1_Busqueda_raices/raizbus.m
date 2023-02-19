function [x1, x2] = raizbus(fun, a, b, dx)
% Se asume: fun continua en (a, b); a < b; dx <= b-a
    if fun(a) * fun(b) < 0
        [x1, x2] = deal(a, a+dx);
        while x2 <= b 
            if fun(x1) * fun(x2) < 0
                return
            else
                [x1, x2] = deal(x2, x2+dx);
            end
        end
        if x2 ~= b
            x2 = b;
        end
    else
         [x1, x2] = deal(NaN);
    end
end