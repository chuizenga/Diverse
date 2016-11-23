//scr_name(col)
//call in Draw GUI
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

draw_set_font(font);
draw_set_alpha(.5);
draw_set_color(c_black);
draw_rectangle(x-boxwidth/2,y-32-boxheight/2,x+boxwidth/2,y-32+boxheight/2,0);

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
        //col = make_color_rgb(255,128,0);
        draw_set_color(argument0);
        }
    draw_text(self.x,self.y-32,text);
}
else
{
    if (objController.click_id = self){
        draw_set_color(c_gray);
        }
    else if (objController.click_id != self) {
        draw_set_color(c_gray);
        }
    draw_text(self.x,self.y-32,text);
}

