// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_word_wrap(){

var text = argument[0];
var max_width = argument[1];
var formatted_text = "";
var words = string_split(text, " "); // Divide o texto em palavras

var current_line = "";

var line_width = 0;

for (var i = 0; i < array_length_1d(words); i++) {
    var word = words[i];

    // Verifica se a palavra cabe na linha atual
    if (line_width + string_width(word) <= max_width) {
        current_line += word + " ";
        line_width += string_width(word + " ");
    } else {
        formatted_text += current_line + "\n"; // Adiciona a linha atual ao texto formatado
        current_line = word + " "; // Inicia uma nova linha
        line_width = string_width(word + " ");
    }
}

formatted_text += current_line; // Adiciona a última linha

return formatted_text;
}