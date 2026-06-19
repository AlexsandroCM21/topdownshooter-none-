/// @description Insert description here
// You can write your code in this editor

speed = 10;

//O alarm que vai criar o efeito
alarm[0] = 2;

//Alarm para morrer
alarm[1] = game_get_speed(gamespeed_fps) * 6;

vel_angle = 1;

//Se eu sair da room, vou me matar
metodo_sairdaroom = function() {
    
    //O x que vai ser o meu final
    var _xfinal = room_width + sprite_width;
    var _yfinal = room_height + sprite_height;
    
    
    
    //Se eu sair da room horizontalmente, vou me matar
    if (x > _xfinal or x < -sprite_width) {
        instance_destroy();
    }
    
    //Se eu sair da room verticalmente, vou me matar
    if (y > _yfinal or y < -sprite_height) {
        instance_destroy();
    }
    
}