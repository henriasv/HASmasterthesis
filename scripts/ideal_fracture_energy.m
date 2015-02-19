% Script to plot an ideal fracture energy vs strain
close all; clear all; clc

hfig = figure();
set(hfig, 'units', 'centimeters')
set(hfig, 'position', [0 0 18 5]);
ax1 = subplot(1, 3, 1);
ax2 = subplot(1, 3, 2);
ax3 = subplot(1, 3, 3);

strain = linspace(1, 1.1, 100);

e_crit = (-1+strain.^2).*(strain < sqrt(1.05)) + (1.05-1)*(strain>=sqrt(1.05));
e_elastic = (-1+strain.^2).*(strain < 1.05) + 0.05*(strain>=1.05);
e_ductile = (-2.2+2.2*strain-18*(strain-1).^2).*(strain<1.09)+(-2.2+2.2*1.09-18*(0.09).^2).*(strain>1.09);

plot(ax1, strain, e_crit)
set(ax1, 'ylim', [0 0.12])
set(ax1, 'xlim', [1 1.11])
subplot(1, 3, 1);
xlabel('Strain', 'interpreter', 'latex')
ylabel('$E_{pot}$ [arb. units]', 'interpreter', 'latex')
text(1.01, 0.11, '(a)')


plot(ax2, strain, e_elastic)
set(ax2, 'ylim', [0 0.12])
set(ax2, 'xlim', [1 1.11])
subplot(1, 3, 2)
xlabel('Strain', 'interpreter', 'latex')
text(1.01, 0.11, '(b)')

plot(ax3, strain, e_ductile)
set(ax3, 'ylim', [0 0.12])
set(ax3, 'xlim', [1 1.11])
subplot(1, 3, 3)
xlabel('Strain', 'interpreter', 'latex')
text(1.01, 0.11, '(c)')