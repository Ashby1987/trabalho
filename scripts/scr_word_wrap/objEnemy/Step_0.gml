/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (instance_exists(objball)){
var diff = objball.y - y;


if abs(diff) > 10{
	
	y += (spd * sign(diff));
}
else{
	
	y += (abs(diff)/10) *  (spd * sign(diff));
	
}
}

 if y < sprite_height/2  y = sprite_height/2;
 if y > room_height - sprite_height/2 y = room_height - sprite_height/2;