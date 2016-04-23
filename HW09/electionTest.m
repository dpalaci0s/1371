vec = zeros(1,15);
vec(1) = isequal(election('candidates1.xlsx',smallTest),election_soln('candidates1.xlsx',smallTest));
vec(2) = isequal(election('candidates2.xlsx',smallTest),election_soln('candidates2.xlsx',smallTest));
vec(3) = isequal(election('candidates3.xlsx',smallTest),election_soln('candidates3.xlsx',smallTest));
vec(4) = isequal(election('candidates1.xlsx',voters1),election_soln('candidates1.xlsx',voters1));
vec(5) = isequal(election('candidates2.xlsx',voters1),election_soln('candidates2.xlsx',voters1));
vec(6) = isequal(election('candidates3.xlsx',voters1),election_soln('candidates3.xlsx',voters1));
vec(7) = isequal(election('candidates1.xlsx',voters2),election_soln('candidates1.xlsx',voters2));
vec(8) = isequal(election('candidates2.xlsx',voters2),election_soln('candidates2.xlsx',voters2));
vec(9) = isequal(election('candidates3.xlsx',voters2),election_soln('candidates3.xlsx',voters2));
vec(10) = isequal(election('candidates1.xlsx',voters3),election_soln('candidates1.xlsx',voters3));
vec(11) = isequal(election('candidates2.xlsx',voters3),election_soln('candidates2.xlsx',voters3));
vec(12) = isequal(election('candidates3.xlsx',voters3),election_soln('candidates3.xlsx',voters3));
vec(13) = isequal(election('candidates1.xlsx',voters4),election_soln('candidates1.xlsx',voters4));
vec(14) = isequal(election('candidates2.xlsx',voters4),election_soln('candidates2.xlsx',voters4));
vec(15) = isequal(election('candidates3.xlsx',voters4),election_soln('candidates3.xlsx',voters4));
vec