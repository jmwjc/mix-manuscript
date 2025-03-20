// import three;
import graph3;

settings.outformat = "png";
settings.render = 16;
defaultpen(fontsize(10pt));
size(200);

real dx = 0.0;
draw((-dx,0.0,0.0)--(1+dx,0.0,0.0),linewidth(1.5));
draw((-dx,0.5,0.0)--(1+dx,0.5,0.0),linewidth(1.5));
draw((-dx,1.0,0.0)--(1+dx,1.0,0.0),linewidth(1.5));
draw((-dx,0.0,0.5)--(1+dx,0.0,0.5),linewidth(1.5));
draw((-dx,0.5,0.5)--(1+dx,0.5,0.5),linewidth(1.5));
draw((-dx,1.0,0.5)--(1+dx,1.0,0.5),linewidth(1.5));
draw((-dx,0.0,1.0)--(1+dx,0.0,1.0),linewidth(1.5));
draw((-dx,0.5,1.0)--(1+dx,0.5,1.0),linewidth(1.5));
draw((-dx,1.0,1.0)--(1+dx,1.0,1.0),linewidth(1.5));
draw((0.0,-dx,0.0)--(0.0,1+dx,0.0),linewidth(1.5));
draw((0.5,-dx,0.0)--(0.5,1+dx,0.0),linewidth(1.5));
draw((1.0,-dx,0.0)--(1.0,1+dx,0.0),linewidth(1.5));
draw((0.0,-dx,0.5)--(0.0,1+dx,0.5),linewidth(1.5));
draw((0.5,-dx,0.5)--(0.5,1+dx,0.5),linewidth(1.5));
draw((1.0,-dx,0.5)--(1.0,1+dx,0.5),linewidth(1.5));
draw((0.0,-dx,1.0)--(0.0,1+dx,1.0),linewidth(1.5));
draw((0.5,-dx,1.0)--(0.5,1+dx,1.0),linewidth(1.5));
draw((1.0,-dx,1.0)--(1.0,1+dx,1.0),linewidth(1.5));
draw((0.0,0.0,-dx)--(0.0,0.0,1+dx),linewidth(1.5));
draw((0.5,0.0,-dx)--(0.5,0.0,1+dx),linewidth(1.5));
draw((1.0,0.0,-dx)--(1.0,0.0,1+dx),linewidth(1.5));
draw((0.0,0.5,-dx)--(0.0,0.5,1+dx),linewidth(1.5));
draw((0.5,0.5,-dx)--(0.5,0.5,1+dx),linewidth(1.5));
draw((1.0,0.5,-dx)--(1.0,0.5,1+dx),linewidth(1.5));
draw((0.0,1.0,-dx)--(0.0,1.0,1+dx),linewidth(1.5));
draw((0.5,1.0,-dx)--(0.5,1.0,1+dx),linewidth(1.5));
draw((1.0,1.0,-dx)--(1.0,1.0,1+dx),linewidth(1.5));

draw(unitcube, surfacepen=gray(0.9),nolight);

surface point = scale3(0.05)*unitsphere;
surface point_pressure = scale3(0.07)*unitsphere;
draw(shift(1.0,0.0,0.0)*point, black);
draw(shift(1.0,1.0,0.0)*point, black);
draw(shift(0.0,1.0,0.0)*point, black);
draw(shift(0.5,1.0,0.0)*point, black);
draw(shift(1.0,0.5,0.0)*point, black);

draw(shift(1.0,0.0,0.5)*point, black);
draw(shift(1.0,1.0,0.5)*point, black);
draw(shift(0.0,1.0,0.5)*point, black);
draw(shift(0.5,1.0,0.5)*point, black);
draw(shift(1.0,0.5,0.5)*point, black);

draw(shift(0.0,0.0,1.0)*point, black);
draw(shift(0.5,0.0,1.0)*point, black);
draw(shift(1.0,0.0,1.0)*point, black);
draw(shift(1.0,1.0,1.0)*point, black);
draw(shift(0.0,0.5,1.0)*point, black);
draw(shift(0.0,1.0,1.0)*point, black);
draw(shift(0.5,1.0,1.0)*point, black);
draw(shift(1.0,0.5,1.0)*point, black);
draw(shift(0.5,0.5,1.0)*point, black);

draw(shift(0.0,0.0,1.0)*point_pressure, blue+opacity(0.4), nolight);
draw(shift(1.0,0.0,1.0)*point_pressure, blue+opacity(0.4), nolight);
draw(shift(0.0,1.0,1.0)*point_pressure, blue+opacity(0.4), nolight);
draw(shift(1.0,1.0,1.0)*point_pressure, blue+opacity(0.4), nolight);
draw(shift(1.0,0.0,0.0)*point_pressure, blue+opacity(0.4), nolight);
draw(shift(0.0,1.0,0.0)*point_pressure, blue+opacity(0.4), nolight);
draw(shift(1.0,1.0,0.0)*point_pressure, blue+opacity(0.4), nolight);