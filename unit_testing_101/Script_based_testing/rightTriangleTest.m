% Test rightTriangle

% Shared Test Data
sides = [1 2];
sidesIso = [5 5];
sides306090 = [2 2*sqrt(3)];
sidesSkewed = [1 1000];

% Tolerance for comparing floating point values
tol = 1e-8;

% Preconditions
angles = rightTriangle(sides);
assert(angles(3) == 90, 'ERROR: RightTriangle result not producing right angle')

%% Test 1: Sum of angles
% Test 1:  Verify that the sum of angles is 180
angles = rightTriangle(sides);
assert(sum(angles) == 180)
angles = rightTriangle(sidesIso);
assert(sum(angles) == 180)
angles = rightTriangle(sides306090);
assert(sum(angles) == 180)
angles = rightTriangle(sidesSkewed);
assert(sum(angles) == 180)

%% Test 2: Iso angles
% Test 2: Verify that Iso angles are the same
angles = rightTriangle(sidesIso);
assert(angles(1) == 45)
assert(angles(1) == angles(2))

%% Test 3: 30, 60, 90 degree Triangle
% Test 3: Check for 30-60-90 degree case
angles = rightTriangle(sides306090);
assert(abs(angles(1)-30.0) <= tol)
assert(abs(angles(2)-60.0) <= tol)

%% Test 4: Small angle
% Test 4: Check swewed triangle with small angle
angles = rightTriangle(sidesSkewed);
smallAngleRad = (pi/180)*angles(1);  % Convert to Radians
approx = sin(smallAngleRad);
delta = abs(approx - smallAngleRad);
assert(delta <= tol, 'Problem with small angle approximation')
