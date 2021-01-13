% Hamilton Nguyen Engr 1300.001 7/11/2018

%{
 Problem Statement: The Eco-Marathon is an annual competition sponsored by
 Shell Oil, in which participants build special vehicles to achieve the
 highest possible fuel efficiency. The Eco-Marathon is held around the 
 world with events in the United Kingdom, Finland, France, Holland, Japan,
 and the United States. A world record was set in the Eco-Marathon by a 
 French team in 2003 called Microjoule with a performance of 10,705 miles
 per gallon. The Microjoule runs on ethanol, which has a specific gravity
 of 0.789. 

Write a MATLAB program to determine how far the Microjoule will
travel in kilometers given a user-specified amount of ethanol, provided
in units of grams. Your program should ask for the mass using an input 
statement and display the distance in a formatted sentence similar to the
output shown below.

 Known Variable: Microjoule_range=10,705 [mi/gal] ; specific_gravity=0.789
 density_water=1000 [kg/m^3], 1[m^3]=1000[L], 1[L]=0.264[gal],
 1000[g]=1[kg], 1[km]=0.621[mi]
 Unknown Variable: Distance=?[km]
 Assumption: N/A
 Equations: density_fuel=specific_gravity*density_water,
 distance_microjoule=
 Microjoule_range*mass_ethanol*(1/convert_density_fuel)
 Case Scenario:

Enter mass of ethanol [grams]: 100
The distance the Microjoule traveled is 577 kilometers.

%}
clear; clc; 

% Declare input mass of ethanol in [grams] and initilize user's prompt input.

mass_ethanol=input('Enter mass of ethanol [grams]: ');

if mass_ethanol<0 
    
error('The input of mass of ethanol is invalid, please input again with positve values in [grams].');

else
    
Microjoule_range = 10705; %[mi/gal]
specific_gravity=0.789; %dimensionless
density_water=1000; %[kg/m^3]
density_fuel=specific_gravity*density_water; %[kg/m^3]

convert_volume=(1/1000)*(1/0.264); %from [m^3] to [L], then [L] to [gal].

convert_mass= (1000/1) ;%converting [kg] to [g].

convert_density_fuel=density_fuel*convert_volume*convert_mass; %[g/gal]

convert_distance=(1/0.621);%converting [km] to [mi]

distance_microjoule= Microjoule_range*mass_ethanol*(1/convert_density_fuel)*convert_distance; %[km]

fprintf('The distance the Microjoule traveled is %0.0f kilometers.\n',distance_microjoule);%compile output to screen.

end