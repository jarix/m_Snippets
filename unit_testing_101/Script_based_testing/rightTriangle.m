function angles=rightTriangle(sides)
%RIGHTTRIANGLE Takes the 2 sides of a right angle triangle and returns the angles
%  
    angleA = atand(sides(1)/sides(2));
    angleB = atand(sides(2)/sides(1));
    hypo = sides(1)/sind(angleA);
    angleC = asind(hypo*sind(angleA)/sides(1));
    angles = [angleA angleB angleC];
end

