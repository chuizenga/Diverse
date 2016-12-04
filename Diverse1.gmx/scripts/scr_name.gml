//scr_name(col)
//To correct for an increase in size, make the name display higher above the characters heads.
w_correct = (display_get_gui_width() / view_wview);
h_correct = (display_get_gui_height() / view_hview);
//call in Draw GUI
posx = (x - view_xview[0])*(display_get_gui_width() / view_wview); //The X position, relative to the view, and scaled to the current window size.
posy = (y - view_yview[0])*(display_get_gui_height() / view_hview); //The Y position, relative to the view, and scaled to the current window size.

maxlength = view_wview[0]*2;
spriteH = sprite_height;

if(dead==false) //ex: Slime
{
    text = name; //name;
}
else //ex: Slime's dead body
{
    text = name + "'s dead body";
}
font = fnt_1;

text_length = string_length(text);
font_size = font_get_size(font);

draw_set_font(font);

//Size of the text
text_width = string_width_ext(text,font_size+(font_size/2), maxlength)
text_height = string_height_ext(text,font_size+(font_size/2), maxlength)
//Size of the background box
boxwidth = text_width;
boxheight = text_height;
//Math to calculate box coordinates
x1 = posx-boxwidth/2;
y1 = posy-boxheight/2-spriteH*h_correct+boxheight*(h_correct-1)/2;
x2 = posx+boxwidth/2;
y2 = posy+boxheight*h_correct/2-spriteH*h_correct;
//Create Box
draw_set_font(font);
draw_set_alpha(.5);
draw_set_color(c_black);
draw_rectangle(x1,y1,x2,y2,0);
//Text Properties
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font);
//Create the Text!
if (dead == false)
{
    if (objController.click_id = self){
        draw_set_color(c_white);
        }
    else if (objController.click_id != self) {
        draw_set_color(argument0);
        }
    draw_text(posx,posy-spriteH*h_correct+boxheight*(h_correct-1)/2,text);
}
else
{
    if (objController.click_id = self){
        draw_set_color(c_gray);
        }
    else if (objController.click_id != self) {
        draw_set_color(c_gray);
        }
    draw_text(posx,posy-spriteH*h_correct+boxheight*(h_correct-1)/2,text);
}
