/// @description Insert description here
// You can write your code in this editor

//Pegando os inputs que o jogador vai entregar
metodo_inputs = function() {
    //Fazendo com que o botão tenha a mesma função da seta
    // ou seja, toda função que será escrita para a seta,
    // também servirá para o botão desejado.
    keyboard_set_map(ord("D"), vk_right);
    keyboard_set_map(ord("A"), vk_left);
    keyboard_set_map(ord("W"), vk_up);
    keyboard_set_map(ord("S"), vk_down);
    
    //Definindo os inputs
    right       = keyboard_check(vk_right);
    left        = keyboard_check(vk_left);
    up          = keyboard_check(vk_up);
    down        = keyboard_check(vk_down);
    mouse_click = mouse_check_button(mb_left);
    
    //Saber se estou em movimento
    moving = (right or left or up or down);
}
metodo_inputs();

#region CASOS

///@desc Apontar para o mouse
angle_mouse = function() {
    //O angulo que o player vai olhar
    var _angle = point_direction(x, y, mouse_x, mouse_y);
    
    //O angulo que o player vai olhar
    image_angle = _angle;
}


atirar = function() {
    //Diminuindo o tempo da cadência
    cadencia_count --;
    
    //Se a cadencia acabou, posso atirar
    if (cadencia_count <= 0) can_shoot = true;
    else can_shoot = false;
    
    //Atirando >:)
    if (mouse_click and can_shoot) { 
        estado = "atirando";
        
        //Criando a bala
        var _tiro = instance_create_layer(x, y, "projeteis", obj_bala);
        //Mundando a direção da bala para ser igual ao meu angulo
        _tiro.direction = image_angle;
        
        //Redefinindo a cadencia
        cadencia_count = cadencia_max;
        
        //Alarm para trocar o estado
        alarm[0] = 5;
        
        //Trocando a sprite para poder atirar
        sprite_index = spr_player_atira;
    }
}


///@desc Aplicando a velocidade no player
velocidade = function() {
    //Se não estou me movimentando, vou trocar de estado
    if (!moving) {
        estado = "parado";
    }
    
    //Limitando a velociade
    speed = clamp(speed, -velmax, velmax);
    
    //Aumentando a velocidade
    hspeed = (right - left) * velmax;
    vspeed = (down - up) * velmax;
    
    //Mudando a sprite
    sprite_index = spr_player;
}

#endregion CASOS

velmax = 5;

velh = 0;
velv = 0;


#region ARMA
//Pegando a dd da glock
arma = global.guns.glock;

//Pegando a cadencia da arma
cadencia_max = arma.cadence;
//A cadencia que vai ser contada
cadencia_count = 0;

//saber se posso atirar
can_shoot = true;

#endregion ARMA

//A variável que vai determinar o estado do player
estado = "parado";


