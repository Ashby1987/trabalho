/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var chao = place_meeting(x, y +1, obj_bloco );

var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var jump = keyboard_check(vk_space);
var avanco = (right - left) * velocidade_h_max;
velocidade_h = lerp(velocidade_h, avanco, velocidade);

	
if(velocidade_h < 0){ image_xscale = -1;
}
if(velocidade_h > 0 ){ image_xscale = 1;
}

if(instance_exists(obj_enemy) and !y <obj_enemy.y){

if(place_meeting(x,y, obj_enemy)){
	
	if(!velocidade_v > 0){
	audio_stop_all();
		room_restart();
	    global.score /=2;
		obj_player.vida = 3;
		}}

}
if(place_meeting(x,y, Object8)){
	
	audio_stop_all();
	room_restart();
	global.score /=2;
		obj_player.vida = 3;
		}


	
if(!chao){
if(velocidade_v < 0){
sprite_index = spr_player_j;
}
else if(velocidade_v >= 0){
sprite_index =spr_player_f;}
velocidade = velocidade_ar;
velocidade_v += gravidade;
	
	
}
else{
	if(velocidade_h = 0){
	sprite_index = spr_player_i1;}
	
	else if(velocidade_h !=0)
	{sprite_index = spr_player_w;}
	
	velocidade = velocidade_chao;
	}



	if(!chao){
	}

	
	if(chao && jump){
		velocidade_v += -pulo;}
		
		velocidade_h = clamp(velocidade_h, -velocidade_h_max, velocidade_h_max);
		
	
		var room_name = room_get_name(room); 
	var room_map = ds_map_create();
room_map[? room_name] = room;


		
		
		key_save = ord("P");
if(place_meeting(x,y,obj_salvadudo)){
if (keyboard_check_pressed(key_save)) {
	if(place_meeting(x,y,obj_salvadudo)){
   var input_text = "SALVANDO..."; // Texto a ser formatado
    var max_width = 260; // Largura máxima do sprite do obj_message

    var formatted_text = scr_word_wrap(input_text, max_width);

    var obj_msg = instance_create_depth(x - 64, -y / 2 - 32, 60, obj_message);
    obj_msg.message_text = formatted_text;
    obj_msg.message_duration = 11180 * 1.5;
    
    ini_open("save_game.ini");
   
	ini_write_real("Room", "CurrentRoom", room);


    ini_close();
    
   ds_map_destroy(room_map);
}}
}  

 // Mova a inicialização de 'i' para fora do bloco de código da verificação do teclado

// Fora do evento
 // Inicializa o contador de pesca
if(place_meeting(x,y,obj_pesca)){
if (keyboard_check(ord("9"))) {
	if(fishing_count == 3){var obj_msg = instance_create_depth(x-256,-y/2-32,60,obj_message);
obj_msg.message_text = "acabaram as iscas :(";
obj_msg.message_duration = 11180*1.5;}
    if (fishing_count < 3) { // Verifica se a pesca ainda é permitida (limite de 3 vezes)
        if (!has_fishing_rod && keyboard_check_pressed(ord("9"))) {
            // O jogador pega uma vara de pesca e muda o sprite
            has_fishing_rod = true;
            sprite_index = spr_varavara;
        } else if (has_fishing_rod && !is_fishing && keyboard_check_pressed(ord("9"))) {
            // O jogador começa a pescar
            is_fishing = true;
            exclamation_timer = random_range(8 * room_speed, 11 * room_speed);
            can_pull_fish = false; // Impede que o jogador puxe o peixe imediatamente
            velocidade_h_max = 0; // Impede que o jogador se mova enquanto pesca

            // Crie o objeto de exclamação acima da cabeça do jogador com uma profundidade específica
            instance_create_depth(x, y - 32, 0, obj_exclamacao);
        } else if (is_fishing && keyboard_check_pressed(ord("9"))) {
			  sprite_index = spr_varavara;
            aaa = choose(0,1,2,3,4,5,6);
            if (aaa == 0) {
                // O jogador puxou o peixe com sucesso dentro de 1 segundo após o ponto de exclamação
              
                var fish_type = choose("Tilapia", "baiacu", "sardinha", "salmão", "Namorado", "lambari");
                var qtd_aaaa = choose(4,5)
				if(fish_type != "baiacu"){  var input_text = "	Você pegou um(a) " + fish_type + " sua vida subiu com tamanho peixe, mas so por aqui mesmo :D"; // Texto a ser formatado
    var max_width = 260; // Largura máxima do sprite do obj_message

    var formatted_text = scr_word_wrap(input_text, max_width);

    var obj_msg = instance_create_depth(x - 64, -y / 2 - 32, 60, obj_message);
    obj_msg.message_text = formatted_text;
    obj_msg.message_duration = 11180 * 1.5;
					vida = qtd_aaaa;
				
				}
                if (fish_type == "baiacu") {
				var input_text = "Voce pegou um BAIACU AAA ele e venenoso :( você morreu :("; // Texto a ser formatado
    var max_width = 260; // Largura máxima do sprite do obj_message

    var formatted_text = scr_word_wrap(input_text, max_width);

    var obj_msg = instance_create_depth(x - 64, -y / 2 - 32, 60, obj_message);
    obj_msg.message_text = formatted_text;
    obj_msg.message_duration = 11180 * 1.5;
	audio_stop_all();
                    room_restart();
					global.score /= 2;
					fishing_count = 3;
                }
            } else {
                // O jogador puxou a vara sem pescar um peixe
               var input_text = "você nao pegou nada :*("; // Texto a ser formatado
    var max_width = 260; // Largura máxima do sprite do obj_message

    var formatted_text = scr_word_wrap(input_text, max_width);

    var obj_msg = instance_create_depth(x - 64, -y / 2 - 32, 60, obj_message);
    obj_msg.message_text = formatted_text;
    obj_msg.message_duration = 11180 * 1.5;
                 
            }

            is_fishing = false;
            exclamation_timer = -1;
            velocidade_h_max = 6; // Restaura a velocidade normal do jogador

            // Remova todos os objetos de exclamação no quarto
            with (obj_exclamacao) {
                instance_destroy();
            }
            
            fishing_count++; // Incrementa o contador de pesca
        }

        if (is_fishing) {
            sprite_index = spr_varavara; // Define o sprite enquanto pesca
        }
    }
}}
if(instance_exists(obj_exclamacao)){sprite_index = spr_varavara;}
if (game_state == "playing") {
    // Adicione o código para o movimento normal do jogador e outros objetos aqui
} else if (game_state == "paused") {
    // Adicione o código para pausa (como exibir o menu de pausa) aqui
}
if (keyboard_check(ord("M"))) {
   
        show_debug_message("Criando objeto de pausa");
        instance_create_depth(obj_player.x +200, y, 000000000000, obj_pausa);
	
          // Congela o jogo
    
}




if(velocidade_h != 0 and velocidade_v == 0){
	if(!audio_is_playing(Sound4)){
		audio_play_sound(Sound4,1,true)}}
else{audio_stop_sound(Sound4);}
if(!instance_exists(obj_p)){
	instance_create_depth(x,y,0,obj_p)}