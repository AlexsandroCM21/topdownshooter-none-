/// @description Insert description here
// You can write your code in this editor
if !(instance_exists(target)) exit;

//A camera padrão do jogo
var _view = view_camera[0];

//O alvo que a camera vai seguir
camera_set_view_target(_view, target);

var _pixels = 100;

//Fazer com que, sempre que o alvo fique a alguns pixeis
// de distancia da borda, ela comece a seguir o player
camera_set_view_border(view_camera[0], _pixels, _pixels);
