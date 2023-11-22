if (obj_player.game_paused) {
    if (mouse_check_button_pressed(mb_left)) {
        // Verifique se o mouse está sobre o botão "Continuar"
        if (point_in_rectangle(mouse_x, mouse_y, room_width / 2 - 100, room_height / 2 - 30, room_width / 2 + 100, room_height / 2 + 10)) {
            obj_player.game_paused = false; // Continuar o jogo
        }
        
        // Verifique se o mouse está sobre o botão "Voltar ao Menu Principal"
        if (point_in_rectangle(mouse_x, mouse_y, room_width / 2 - 100, room_height / 2 + 10, room_width / 2 + 100, room_height / 2 + 50)) {
            room_goto(0); // Voltar ao Menu Principal (substitua "rm_menu" pelo nome da sala do menu principal)
        }
    }
}
