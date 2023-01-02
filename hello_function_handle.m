
% Function Handle Example
function hello_function_handle

    % Create function handle to local function
    f = @computeSquare;

    a = 4; 
    b = f(a);
    fprintf('%d squared is %d\n', a, b);
    
    % Create function handle to built-in functions
    o = @ones;
    c = o();
    fprintf('c = %d\n', c);

    % Handles to anonymous functions
    % h = @(arglist)anonymous_function
    sqr = @(n) n.^2;
    x = sqr(a);
    fprintf('%d squared is %d\n', a, x);
    
    % Arrays of function handles
    C = {@sin, @cos, @tan };
    res = C{2}(pi);
    fprintf('cos(pi) = %f\n', res);
    
    S.s = @sin;
    S.c = @cos;
    S.t = @tan;
    res = S.s(pi);
    fprintf('sin(pi) = %f\n', res);
    
    % Passing function to another function
    x1 = 0;
    x2 = 5;
    q1 = integral(@sin, x1, x2);
    fprintf('integral sin from 0 to 5 = %f\n', q1);
    
    % Compare function handles
    h1 = @sin;
    h2 = @sin;
    isequal(h1,h2)
end

function y = computeSquare(x)
    y = x.^2;
end


