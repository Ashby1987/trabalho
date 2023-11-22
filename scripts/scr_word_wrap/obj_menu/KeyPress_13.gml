/// @description Inserir descrição aqui
if (index == 0) {

    should_goto_room = true;
    var input_text = "A e D para andar, espaco para pular, P para salvar, M para pausar DIVIIIIIRTA-SE!!!!!"; // Texto a ser formatado
    var max_width = 260; // Largura máxima do sprite do obj_message

    var formatted_text = scr_word_wrap(input_text, max_width);

    var obj_msg = instance_create_depth(x - 64, -y / 2 - 32, 60, obj_message);
    obj_msg.message_text = formatted_text;
    obj_msg.message_duration = 1.3*11180 * 1.7;

}



if(index == 1){
	if file_exists("save_game.ini") {
        ini_open("save_game.ini");
 
	var room_index = ini_read_real("Room", "CurrentRoom", noone);
ini_close();


// Verifique se o índice da sala é válido
if (room_index != noone) {
    room_goto(room_index);
	audio_stop_all();
}

	}}

else if(index == 2){
	
	
game_end();


}
if (index == 3){
	room_goto(8)
}