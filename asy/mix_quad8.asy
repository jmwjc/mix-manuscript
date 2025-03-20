import graph;

settings.outformat = "png";
settings.render = 16;
defaultpen(fontsize(10pt));
size(200);

real dx = 0.1;
draw((-dx,0.0)--(1+dx,0.0),linewidth(1.5));
draw((-dx,1.0)--(1+dx,1.0),linewidth(1.5));
draw((0.0,-dx)--(0.0,1+dx),linewidth(1.5));
draw((1.0,-dx)--(1.0,1+dx),linewidth(1.5));

fill(circle((0.0,0.0), 0.05), black);
fill(circle((0.5,0.0), 0.05), black);
fill(circle((1.0,0.0), 0.05), black);
fill(circle((0.0,0.5), 0.05), black);
fill(circle((1.0,0.5), 0.05), black);
fill(circle((0.0,1.0), 0.05), black);
fill(circle((0.5,1.0), 0.05), black);
fill(circle((1.0,1.0), 0.05), black);

fill(circle((0.0,0.0), 0.07), blue+opacity(0.5));
fill(circle((1.0,0.0), 0.07), blue+opacity(0.5));
fill(circle((0.0,1.0), 0.07), blue+opacity(0.5));
fill(circle((1.0,1.0), 0.07), blue+opacity(0.5));

// real size = 0.025;
// draw(shift(0.0, 0.0) * scale(size) * ((-1,-1)--(1,1)), fuchsia+linewidth(4));
// draw(shift(0.0, 0.0) * scale(size) * ((-1,1)--(1,-1)), fuchsia+linewidth(4));
// draw(shift(1.0, 0.0) * scale(size) * ((-1,-1)--(1,1)), fuchsia+linewidth(4));
// draw(shift(1.0, 0.0) * scale(size) * ((-1,1)--(1,-1)), fuchsia+linewidth(4));
// draw(shift(1.0, 1.0) * scale(size) * ((-1,-1)--(1,1)), fuchsia+linewidth(4));
// draw(shift(1.0, 1.0) * scale(size) * ((-1,1)--(1,-1)), fuchsia+linewidth(4));
// draw(shift(0.0, 1.0) * scale(size) * ((-1,-1)--(1,1)), fuchsia+linewidth(4));
// draw(shift(0.0, 1.0) * scale(size) * ((-1,1)--(1,-1)), fuchsia+linewidth(4));