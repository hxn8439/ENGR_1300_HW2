% Hamilton Nguyen Engr 1300.001 7/11/2018

%{
 Problem Statement: When one tries to stop a car,both reaction time of the
 driver and the braking must be considered. Create a proper plot of the
 following data. Refer to Textbook, Thinking like an Engineer 4th edition,
 on data reference for problem RQ 17_4.  

 Known Variable: N/A
 Unknown Variable: Create a plot base on the data given for the problem.
 Assumption:N/A
 Equations: N/A
 Case Scenario: N/A, Refer to output graph.

%}

clear; clc; 

%create a row matrix for Vehicle Speed
Vehicle_Speed=[20 30 40 50 60 70]; %[mph] units

%create a row matrix for driver reaction distance.
Reaction_dr=[6 9 12 15 18 21]; %[m] units

%create a row matrix for braking distance.
Breaking_db=[6 14 24 38 55 75]; %[m] units

%graph background
figure('color', 'white')

%Plot the graph. 's' means square while 'd' means diamond.
plot= plot(Vehicle_Speed,Reaction_dr,'s',Vehicle_Speed,Breaking_db,'d');
%set title graph
title('Plot data of Vehicle Velocity vs Braking and Reaction Distance');
%set markersize
set(plot,'markersize', 12)

%Setting a grid in graph.
grid

%Axis define.
axis([0 100 0 100])

%Define a legend.
legend ('Reaction', 'Braking');

%Define axis.
ylabel('Distance in meters[m]')
xlabel('Vehicle Velocity [mph]')

