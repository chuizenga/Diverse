//scr_draw_ui_element(TL,T,TR,R,BR,B,BL,L,Background);
//Draw Background
draw_set_alpha(1);
draw_sprite_stretched(
    argument8,
    0,
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
    0,
    x1+8,
    y1,
    width-16,
    16
    );
//Bottom
draw_sprite_stretched(
    argument5,
    0,
    x1+8,
    y1+height-15, //Bottom and Right sides 1 pixel too long
    width-16,
    16
    );
//Left
draw_sprite_stretched(
    argument7,
    0,
    x1,
    y1+8,
    16,
    height - 16
    );
//Right
draw_sprite_stretched(
    argument3,
    0,
    x1+width-15, //Bottom and Right sides 1 pixel too long
    y1+8,
    16,
    height - 16
    );
//DRAW CORNERS
draw_sprite(argument0,0,x1,y1);
draw_sprite(argument2,0,x1+width-15,y1); //Bottom and Right sides 1 pixel too long
draw_sprite(argument4,0,x1+width-15,y1+height-15); //Bottom and Right sides 1 pixel too long
draw_sprite(argument6,0,x1,y1+height-15); //Bottom and Right sides 1 pixel too long

