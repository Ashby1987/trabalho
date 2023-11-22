/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Evento Create do obj_save
key_save1 = vk_f5;
key_load = vk_f9;
// Evento Step do obj_save
if (keyboard_check_pressed(key_save1)) {
    // Salvamento: Salvar a posição do objeto "obj_player"
    var save_file = file_text_open_write("sala_save.txt");
    file_text_write_real(save_file, obj_player.x);
    file_text_write_real(save_file, obj_player.y);
    file_text_close(save_file);
    show_message("Jogo salvo.");
}

if (keyboard_check_pressed(key_load)) {
    // Carregamento: Carregar a posição do objeto "obj_player"
    if (file_exists("sala_save.txt")) {
        var load_file = file_text_open_read("sala_save.txt");
        var x_pos = file_text_read_real(load_file);
        var y_pos = file_text_read_real(load_file);
        file_text_close(load_file);
        
        // Define a posição do objeto "obj_player" com base nos valores lidos
        obj_player.x = x_pos;
        obj_player.y = y_pos;
        
        show_message("Jogo carregado.");
    } else {
        show_message("Nenhum jogo salvo encontrado.");
    }
}
