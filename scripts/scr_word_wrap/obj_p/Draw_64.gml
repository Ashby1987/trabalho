/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// Defina a largura do retângulo preto de fundo
var backgroundWidth = 200;  // Ajuste o tamanho conforme necessário

// Desenhe um retângulo preto como fundo
draw_self();

// Defina a cor do desenho para branco
draw_set_color(c_white);

// Desenhe a pontuação
draw_text(display_get_width()/2, 20, string(global.score));
x = (display_get_width()/2);
y = 0;