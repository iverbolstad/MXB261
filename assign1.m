function dom = randWalk(N, P, s, e)
    dom = zeros(99,99); % Domain
    for i = 1:N
        bool = 1; % While loop boolean
        if P == 1
            x = 50; % Position row
            y = 1; % Position column
        else
            x = randi(99); % Uniform random function
            y = 1;
        end
        while bool == 1 % Start walk for particle i
            randNum = rand; 
            if randNum <= s
                y = y + 1;
                if y == 100
                    y = y - 1;
                end
                if dom(y,x) == 1
                    y = y - 1;
                    dom(y,x) = 1;
                    bool = 0;
                end
            elseif s < randNum && randNum <= e + s
                x = x + 1;
                if x == 100
                    x = 1;
                end
                if dom(y,x) == 1
                    x = x - 1;
                    if x == 0
                        x = 99;
                    end
                    continue
                end
            else % Else the particle walks west
                x = x - 1;
                if x == 0
                    x = 99;
                end
                if dom(y,x) == 1
                    x = x + 1;
                    if x == 100
                        x = 1;
                    end
                    continue
                end
            end
            if y == 99
                dom(y,x) = 1;
                bool = 0;
            end
        end
    end
end