/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(place_meeting(x,y,obj_player) && keyboard_check(ord("E"))){  var input_text = "ei... voce nao pode entrar ai >:("; // Texto a ser formatado
    var max_width = 260; // Largura máxima do sprite do obj_message

    var formatted_text = scr_word_wrap(input_text, max_width);

    var obj_msg = instance_create_depth(x - 64, -y / 2 - 32, 60, obj_message);
    obj_msg.message_text = formatted_text;
    obj_msg.message_duration = 11180 * 1.5;
	
}
	