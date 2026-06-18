/// @description Insert description here
// You can write your code in this editor

metodo_inputs();
angle_mouse();

//Trocando o estado
switch (estado) {
    //O player não está se movimentando
    case "parado":
        //Se estou me movimentando, vou trocar de estado
        if (moving) {
            estado = "movimento";
        }
        
        
        //Mudando a sprite
        sprite_index = spr_player_idle;
        
    break;

    //O player está em movimento
    case "movimento":
        //Se não estou me movimentando, vou trocar de estado
        if (!moving or speed == 0) {
            estado = "parado";
        }
        
        //trocando a sprite
        sprite_index = spr_player_move;
        
        //Aplicando a velocidade
        velocidade();
        
        
    break;
}

