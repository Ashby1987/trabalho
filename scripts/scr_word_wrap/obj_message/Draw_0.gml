draw_self(); // Desenha o objeto, se houver um sprite associado

if (string_length(message_text) > 0) {
    draw_set_color(c_dkgrey); // Cor da fonte
    draw_set_font(Font2); // Fonte padrão (ou escolha a fonte desejada)

    // Configura a posição onde a mensagem será desenhada (ajuste conforme necessário)
  x = display_get_width() / 2;
y =display_get_height()-256; // Posição acima do objeto do jogador

    draw_text(x,y, message_text);
}
