 opcao_selecionada = 0;
 total_opcoes = 2; // Duas opções no menu (continuar e voltar ao menu)

// Obtenha a largura e altura da tela
var screenWidth = display_get_width();
var screenHeight = display_get_height();

// Obtenha as dimensões do objeto
if(obj_player.x > screenWidth/2){
	
	x = obj_player.x}
	else {x =  screenWidth/2;}
y = screenHeight * 0.5;

 original_room_speed = room_speed;
