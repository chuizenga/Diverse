if(position_meeting(mouse_x,mouse_y,self))
{
    if(hasEntered) && mouse_check_button(mb_left)
    {
        state = 2;
        hasClicked = true;
    }
    else if(hasEntered) && (hasClicked) && !mouse_check_button(mb_left)
    {
        //FUNCTION HERE
        hasClicked=false;
    }
    else
    {
    state = 1;
    hasEntered = true;
    }
}
if(!position_meeting(mouse_x,mouse_y,self))
{
    if(hasEntered)
    {
        state = 0;
        hasEntered = false;
    }
    if(hasClicked)
    {
        state = 0;
        hasClicked = 0;
    } 
}
