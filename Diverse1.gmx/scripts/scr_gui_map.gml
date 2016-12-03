//scr_gui_map(h_offset,v_offset);
//widthcorrect
w_correct = (display_get_gui_width() / view_wview);
//heightcorrect
h_correct = (display_get_gui_height() / view_hview);
//horizontal offset
h_offset = argument0;
//vertical offset
v_offset = argument1;
//For Physical Space
posx1 = view_xview+(view_wview/2) - width/(2*w_correct) + h_offset/w_correct; //The X position, relative to the view, and scaled to the current window size.
posy1 = view_yview+(view_hview/2) - height/(2*h_correct) + v_offset/h_correct; //The Y position, relative to the view, and scaled to the current window size.
posx2 = view_xview+(view_wview/2) + width/(2*w_correct)-1 + h_offset/w_correct;
posy2 = view_yview+(view_hview/2) + height/(2*h_correct)-1 + v_offset/h_correct;

//For UI space
x1 = (display_get_gui_width()-width)/2 + h_offset;
y1 = (display_get_gui_height()-height)/2 + v_offset;
x2 = (display_get_gui_width()+width)/2 + h_offset;
y2 = (display_get_gui_height()+height)/2 + v_offset;

//Move to Menu position
x = posx1;
y = posy1;
image_xscale = (posx2-posx1)+1;
image_yscale = (posy2-posy1)+1;
