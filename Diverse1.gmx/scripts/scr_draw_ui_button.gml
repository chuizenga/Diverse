//scr_draw_ui_element(TL,T,TR,R,BR,B,BL,L,Background,variable State);
//Draw Background
state = argument9;
text = argument10;
draw_set_alpha(1);
draw_sprite_stretched(
    argument8,
    state,
    x1,
    y1,
    width,
    height,
    );
//DRAW BORDER
//draw_sprite_stretched(sprite_index,subimage,x,y,width,height);
draw_set_alpha(1);
//Top
draw_sprite_stretched(
    argument1,
    state,
    x1+8,
    y1,
    width-16,
    16
    );
//Bottom
draw_sprite_stretched(
    argument5,
    state,
    x1+8,
    y1+height-15, //Bottom and Right sides 1 pixel too long
    width-16,
    16
    );
//Left
draw_sprite_stretched(
    argument7,
    state,
    x1,
    y1+8,
    16,
    height - 16
    );
//Right
draw_sprite_stretched(
    argument3,
    state,
    x1+width-15, //Bottom and Right sides 1 pixel too long
    y1+8,
    16,
    height - 16
    );
//DRAW CORNERS
draw_sprite(argument0,state,x1,y1);
draw_sprite(argument2,state,x1+width-15,y1); //Bottom and Right sides 1 pixel too long
draw_sprite(argument4,state,x1+width-15,y1+height-15); //Bottom and Right sides 1 pixel too long
draw_sprite(argument6,state,x1,y1+height-15); //Bottom and Right sides 1 pixel too long
//DRAW TEXT
draw_set_font(fnt_1);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(x1+((x2-x1)/2),y1+((y2-y1)/2), text);

