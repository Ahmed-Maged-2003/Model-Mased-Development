% Define system parameters
R = 1e3;  
C = 1e-6; 
Vin = @(t) 5 * sin(2 * pi * t);

ode = @(t,VC) -1/(R*C) * VC + 1/C * Vin(t) ;

% Solve the differential equation

VC0 = 0;

t_needed = [0 5];

 [t, VC] = ode45(ode, t_needed, VC0);
 
 
% Plot the voltage vs time

plot(t, VC);
xlabel('Time (seconds)');
ylabel('Voltage across Capacitor (Volts)');
title('RC Circuit Simulation');
grid on;
