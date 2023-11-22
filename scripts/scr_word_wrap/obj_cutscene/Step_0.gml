
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Evento Step do obj_cutscene
switch (cutscene_step) {
    case 0:
        // Passo 1: Move obj_walkscene até obj_stop
        if (obj_walkscene.x < target_x) {
            obj_walkscene.x += 2; // Ajuste a velocidade de acordo com sua preferência
        } else {
            // Quando alcançar obj_stop, vá para o próximo passo
            cutscene_step++;
        }
        break;

    case 1:
        // Passo 2: Faça obj_walkscene virar para o outro lado
        obj_walkscene.image_xscale = -1; // Inverte a escala x para virar o objeto
        cutscene_step++;
        break;

    case 2:
        // Passo 3: Mostra o objeto de fala
        instance_create_depth(obj_walkscene.x, obj_walkscene.y - 32, 0, obj_fala); // Posicione o objeto de fala sobre a cabeça de obj_walkscene
        cutscene_step++;
        break;

    case 3:
        // Passo 4: Espera por um tempo antes de continuar
        if (wait_time > 0) {
            wait_time--;
        } else {
            cutscene_step++;
        }
        break;

    case 4:
        // Passo 5: Move obj_walkscene até obj_wrap
        if (obj_walkscene.x < obj_wrap.x) {
			instance_destroy(obj_fala);
			obj_walkscene.image_xscale = 1;
            obj_walkscene.x += 2; // Ajuste a velocidade de acordo com sua preferência
        } else {
            // Quando alcançar obj_wrap, termine a cutscene
            room_goto(2); // Destrua o objeto de cutscene
        }
        break;
}
