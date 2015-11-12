clc;
clear all;
close all;
format short g;
% ----------------------------------------------------------------------- %
fontsize = 40;
linewidth = 5;
markersize = 20;
% ----------------------------------------------------------------------- %
K = 4;
phi = @(r) K * exp(-K * r) ./ (1 + exp(-K * r)).^2.0;

r = linspace(-3, 3, 500);
skip = 10;
figure,
plot(r, phi(r), 'k', ...
     r, phi2(r), 'k--', ...
     r, phi3(r), 'k-.', ...
     r(1:skip:end), phi4(r(1:skip:end)), 'ko-', ...
     'linewidth', linewidth, ...
     'markersize', markersize)
legend('Continuous', '2-Point', '3-Point', '4-Point')
xlabel('r', 'fontsize', fontsize)
ylabel('\phi(r)', 'fontsize', fontsize)
set(gca, 'fontsize', fontsize)

trapz(r, phi(r))
trapz(r, phi2(r))
trapz(r, phi3(r))
trapz(r, phi4(r))