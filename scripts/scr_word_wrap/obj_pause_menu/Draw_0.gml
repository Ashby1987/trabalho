/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (obj_player.game_paused) {
    draw_self(); // Desenhe o próprio objeto
    draw_set_color(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(room_width / 2, room_height / 2 - 20, "Continuar");
    draw_text(room_width / 2, room_height / 2 + 20, "Voltar ao Menu Principal");
}
