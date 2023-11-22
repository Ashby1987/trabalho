/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Evento Destroy do objeto obj_message

if (instance_exists(obj_menu)) {
    if (obj_menu.should_goto_room) {
			audio_stop_all();
        room_goto(1); // Mudança de sala
    }
}
instance_destroy();