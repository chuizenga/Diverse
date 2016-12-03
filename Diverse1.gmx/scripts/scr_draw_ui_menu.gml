///Draw Menu
//Draw Background
draw_set_alpha(.5);
draw_set_color(c_black);
draw_rectangle(
    x1,
    y1,
    x2,
    y2,
    0
    );
//DRAW BORDER
//draw_sprite_stretched(sprite_index,subimage,x,y,width,height);
draw_set_alpha(1);
//Top
draw_sprite_stretched(
    spr_windowT,
    0,
    x1+8,
    y1,
    width-16,
    16
    );
//Bottom
draw_sprite_stretched(
    spr_windowB,
    0,
    x1+8,
    y1+height-15, //Bottom and Right sides 1 pixel too long
    width-16,
    16
    );
//Left
draw_sprite_stretched(
    spr_windowL,
    0,
    x1,
    y1+8,
    16,
    height - 16
    );
//Right
draw_sprite_stretched(
    spr_windowR,
    0,
    x1+width-15, //Bottom and Right sides 1 pixel too long
    y1+8,
    16,
    height - 16
    );
//DRAW CORNERS
draw_sprite(spr_windowTL,0,x1,y1);
draw_sprite(spr_windowTR,0,x1+width-15,y1); //Bottom and Right sides 1 pixel too long
draw_sprite(spr_windowBR,0,x1+width-15,y1+height-15); //Bottom and Right sides 1 pixel too long
draw_sprite(spr_windowBL,0,x1,y1+height-15); //Bottom and Right sides 1 pixel too long

