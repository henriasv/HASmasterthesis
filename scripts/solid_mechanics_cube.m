% Script to draw the cube of stresses and strains in solid mechanics
fontSize = 12;
arrowLength = 0.45
textLift = 0.07

plotcube([1, 1, 1], [0, 0, 0], 0.7, [0.9 0.9 0.9])
axis equal
% x-face
mArrow3([1, 0.5 0.5], [1+arrowLength 0.5 0.5]);
text(1+arrowLength/2, 0.5, 0.5-textLift, '\sigma_{xx}', 'fontsize', fontSize);

mArrow3([1 0.5 0.5], [1 0.5+arrowLength 0.5]);
text(1.01, 0.5+0.17, 0.5+textLift, '\sigma_{xy}', 'fontsize', fontSize);


mArrow3([1 0.5 0.5], [1 0.5 0.5+arrowLength]);
text(1.01, 0.5-textLift-0.06, 0.5+arrowLength/2, '\sigma_{xz}', 'fontsize', fontSize);


% y-face
mArrow3([0.5 1 0.5], [0.5 1.5 0.5]);
text(0.5, 1+arrowLength/2, 0.5-textLift, '\sigma_yy', 'fontsize', fontSize);

mArrow3([0.5 1 0.5], [0.5+arrowLength 1 0.5]); 
text(0.5, 1+arrowLength/2, 0.5-textLift, '\sigma_yx', 'fontsize', fontSize);

mArrow3([0.5 1 0.5], [0.5 1 0.5+arrowLength]);
text(0.5, 1+arrowLength/2, 0.5-textLift, '\sigma_yz', 'fontsize', fontSize);

% z-face
mArrow3([0.5, 0.5 1], [0.5 0.5 1.5]);
text(0.5, 0.5+0.05, 1.25, '\sigma_z', 'fontsize', fontSize);

mArrow3([0.5 0.5 1], [0.5 1 1]); 
text(0.5, 1+arrowLength/2, 0.5-textLift, '\sigma_zx', 'fontsize', fontSize);

mArrow3([0.5 0.5 1], [1 0.5 1]);
text(0.5, 1+arrowLength/2, 0.5-textLift, '\sigma_zy', 'fontsize', fontSize);
