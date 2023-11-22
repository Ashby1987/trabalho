/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self(); // Desenha o sprite do menu de pausa
;
// Desenha o destaque se a opção estiver selecionada
if opcao_selecionada == 0 {
    draw_sprite(spr_destaque, -1, x, y - 42); // Desenha o destaque na posição da primeira opção
} else if opcao_selecionada == 1 {
    draw_sprite(spr_destaque, -1, x, y - 1); // Desenha o destaque na posição da segunda opção
}

// Desenha as opções do menu
draw_text(x - 50, y - 20, "Continuar");
draw_text(x - 50, y + 20, "Menu Inicial");
