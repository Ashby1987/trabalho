if (keyboard_check_pressed(ord("N")) && instance_exists(obj_player)) {
    if (game_state == "playing") {
        game_state = "paused"; // Alterna para o estado de pausa
    } else if (game_state == "paused") {
        game_state = "playing"; // Alterna para o estado de jogo
    }
}
