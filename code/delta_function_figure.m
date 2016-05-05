clc;
clear all;
close all;
format short g;
% ------------------------------------- %
fontsize = 40;
linewidth = 5;
% ------------------------------------- %
phi = @(r, eta) (1 / eta) .* ((-tanh(r / eta).^2 + 1) / 2);

r = linspace(-5, 5, 1000);
Eta = [0.1, 0.25, 1, 2];

figure,
plot(r, phi(r, Eta(1)), 'k', ...
       r, phi(r, Eta(2)), 'k--', ...
       r, phi(r, Eta(3)), 'k-.', ...
       'linewidth', linewidth)
xlabel('r', 'fontsize', fontsize)
ylabel('\phi(r)', 'fontsize', fontsize)
legend('\phi = 0.1', '\phi = 0.25', '\phi = 1.0')
set(gca, 'fontsize', fontsize)