% Hamilton Nguyen Engr 1300.001 7/11/2018

%{
Problem Statement:A unmanned X-43A scramjet test vehicle has achieved a 
maximum speed of Mach number 9.68 in a test flight over the Pacific Ocean. 
Mach number is defined as the speed of an object divided by the speed of 
sound. Assuming the speed of sound is 343 meters per second, write a MATLAB 
program to determine speed in units of miles per hour. Your Program should 
ask the user to provide the speed as Mach number and return the speed 
in miles per hour in a formatted sentence, displayed as an integer value, 
as shown in the following sample output.

Known Variable: Speed_Mach#= 9.68 , SpeedSound=343 [m/s], 1hr=3600secs,
1000m= 0.621 mi
 
Unknown Variable: object_speed= ? [miles/hr]
Assumption:  Speed_Of_Sound is 343 [m/s^2]
Equations: object_speed=object_speed=(Speed_Mach*Speed_Of_Sound)*((time)*(distance))
Case Scenario: 
Enter the speed as a Mach number: 9.68
The speed of the plane is 7425 mph.
%}

clear; clc; 

% Input Mach number and initilize user's prompt input.

Speed_Mach=input('Enter the speed as a Mach number: ');

% set condition that if speed Mach number does not equal to 9.68 as per stated in the
% question, print an error message in the If statement. If speed of Mach number equals to 9.68,
% proceed, calculate, and print result in the else statement.

%if statement, if Speed_Mach does not equal to 9.68
if Speed_Mach~=9.68
    
error('The input speed Mach number is not equal to 9.68, please input again at 9.68 as stated per question');

% else statement, if Speed_Mach does equal to 9.68    
else
    
    %Input Speed_Of_Sound
    Speed_Of_Sound=343;
    
    %calculate speed of sound
    object_speed=(Speed_Mach*Speed_Of_Sound);
    
    %convert seconds to hours
    time=3600;
    %convert meters to miles
    distance=(0.621/1000);
    
    %Convert units from [m/s] to [mi/hr]
    Conversion=object_speed*((time)*(distance));
    
    %print solution using an argument string
    fprintf('The speed of the plane is %0.0f mph.\n', Conversion);
    
    %end program
end