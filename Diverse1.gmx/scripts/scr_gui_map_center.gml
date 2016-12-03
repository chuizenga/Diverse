//Physical Space
w_correct = (display_get_gui_width() / view_wview);
h_correct = (display_get_gui_height() / view_hview);
//For Physical Space
posx1 = view_xview+(view_wview/2) - width/(2*w_correct); //The X position, relative to the view, and scaled to the current window size.
posy1 = view_yview+(view_hview/2) - height/(2*h_correct); //The Y position, relative to the view, and scaled to the current window size.
posx2 = view_xview+(view_wview/2) + width/(2*w_correct)-1;
posy2 = view_yview+(view_hview/2) + height/(2*h_correct)-1;

//For UI space
x1 = (display_get_gui_width()-width)/2;
y1 = (display_get_gui_height()-height)/2;
x2 = (display_get_gui_width()+width)/2;
y2 = (display_get_gui_height()+height)/2;

//Move to Menu position
x = posx1;
y = posy1;
image_xscale = (posx2-posx1)+1;
image_yscale = (posy2-posy1)+1;
