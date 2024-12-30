size(300,300);

real a = 10;
path shadow = box((-1,-a/2-1),(0,a/2+1));

for (real i = -a/2-2; i<a/2+1; i+=0.25){
    draw((-1,i)--(0,i+1),linewidth(1.5));
}
clip(shadow);

draw(box((0,-a/2),(a,a/2)),linewidth(3));
draw((0,-6)--(0,6),linewidth(3));