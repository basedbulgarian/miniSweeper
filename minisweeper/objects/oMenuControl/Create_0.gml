///Applied to new objects created
aHalign = fa_center;
aValign = fa_middle;
aFont = fMediumMenu;
aWidth = 0.6;
aHeight = 0.1;

pressColorFilled = c_white;
pressColor = c_gray
selected = noone;
active = true;
alpha = 1;
updatedSlider = noone;

cleanedUp = false;

menuTime = 0;
width = 1;
height = 1;

buttons = ds_list_create();
labels = ds_list_create();
sprites = ds_list_create();
sliders = ds_list_create();
toggles = ds_list_create();

inputController = instance_find(oInput,0);

handlesStep = true;