if keyboard_check_pressed(ord("M")) && instance_exists(obj_player) {
    instance_destroy(); // Fecha o menu de pausa
    room_speed = original_room_speed; // Restaura a room_speed original
}

// Controla a seleção de opções com as teclas de seta
if keyboard_check_pressed(vk_up) {
    opcao_selecionada -= 1;
    if opcao_selecionada < 0 {
        opcao_selecionada = total_opcoes - 1;
    }
}

if keyboard_check_pressed(vk_down) {
    opcao_selecionada += 1;
    if opcao_selecionada >= total_opcoes {
        opcao_selecionada = 0;
    }
}

// Verifica se o jogador pressionou Enter para confirmar a seleção
if keyboard_check_pressed(vk_enter) {
    // Execute a ação correspondente à opção selecionada
    if opcao_selecionada == 0 {
        // Continuar o jogo
        instance_destroy(); // Fecha o menu de pausa
        room_speed = original_room_speed; // Restaura a room_speed original
    } else if opcao_selecionada == 1 {
        // Voltar ao menu inicial
        room_goto(0); // Substitua "menu_inicial" pelo nome da sala inicial do seu jogo
    }
}
if(instance_exists(obj_pausa)){
	global.pausado = true;}
	else{global.pausado = false}