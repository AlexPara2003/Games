image_alpha  = lerp(image_alpha , 0, random_range(.01,.02));
image_xscale = lerp(image_xscale, 0, random_range(.001,.005));
image_yscale = lerp(image_yscale, 0, random_range(.001,.005));

y -= delta_time / 100000 * 2;
x += delta_time / 100000;

if (image_alpha < 0.05) instance_destroy();