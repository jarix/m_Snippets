function roots = quadraticSolver(a, b, c)
%QUADRATICSOLVER solves the quadratic equation a*x^2 + b*x +c = 0
    if (~isa(a,'numeric') || ~isa(b,'numeric') || ~isa(c,'numeric'))
        error('ERROR: quadraticSolver inputs must be numeric');
    end
    
    roots(1) = (-b + sqrt(b^2 - 4*a*c)) / (2*a);
    roots(2) = (-b - sqrt(b^2 - 4*a*c)) / (2*a);
end



