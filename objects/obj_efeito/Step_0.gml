/// @description Insert description here
// You can write your code in this editor


switch(efeito) {
    case "tiro":
        //Trocando a sprite do efeito
        sprite_index = spr_efeito_tiro;
        
        image_xscale -= .05
        image_yscale = image_xscale;
        
        image_alpha -= .01;
        
        //Pegado os fps do jogo
        var _fps = game_get_speed(gamespeed_fps);
        var _spd_img = sprite_get_speed(sprite_index) / _fps;
        
        if (image_index + _spd_img >= sprite_get_number(sprite_index)) {
            //show_message(image_index);
            //image_index = 0;
            //image_xscale = 20
            instance_destroy();
            //show_message("AINNNNN");
        }
    break;
}
