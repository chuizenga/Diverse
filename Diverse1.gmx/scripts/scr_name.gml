//scr_name(col)
//call in Draw GUI
posx = (x - view_xview[0])*(display_get_gui_width() / view_wview);
posy = (y - view_yview[0])*(display_get_gui_height() / view_hview);
/*posx = c_posx*(view_wview / display_get_gui_width());
poxy = c_posy*(view_hview / display_get_gui_height());*/
w_correct = (display_get_gui_width() / view_wview);
h_correct = (display_get_gui_height() / view_hview);

maxlength = view_wview[0];
if(dead==false)
{
    text = name;
}
else{
    text = name + "'s dead body";
}
font = fnt_1;

text_length = string_length(text);
font_size = font_get_size(font);

draw_set_font(font);

text_width = string_width_ext(text,font_size+(font_size/2), maxlength)
text_height = string_height_ext(text,font_size+(font_size/2), maxlength)

boxwidth = text_width;
boxheight = text_height;
x1 = posx-boxwidth/2;
y1 = posy-boxheight/2-32*h_correct;
x2 = posx+boxwidth/2;
y2 = posy+boxheight/2-32*h_correct;

draw_set_font(font);
draw_set_alpha(.5);
draw_set_color(c_black);
draw_rectangle(x1,y1,x2,y2,0);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font);
if (dead == false)
{
    if (objController.click_id = self){
        draw_set_color(c_white);
        }
    else if (objController.click_id != self) {
        draw_set_color(argument0);
        }
    draw_text(posx,posy-32*h_correct,text);
}
else
{
    if (objController.click_id = self){
        draw_set_color(c_gray);
        }
    else if (objController.click_id != self) {
        draw_set_color(c_gray);
        }
    draw_text(posx,posy-32*h_correct,text);
}

