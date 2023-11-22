/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
ini_open("pontos.ini");
var savedScore = ini_read_real("ponto", "pontos", noone);
ini_close();

draw_self(); // Desenhe o objeto como faria normalmente

// Configuração de cor e fonte
draw_set_color(c_white);
draw_set_font(ft_menu); // Substitua "font_you_desejada" pela fonte que você deseja usar

// Desenhe o "high score" no canto superior esquerdo
var text = "High Score: " + string(savedScore);
draw_text(obj_menu.x/3, 20, text); // Ajuste a posição (20, 20) conforme necessário
