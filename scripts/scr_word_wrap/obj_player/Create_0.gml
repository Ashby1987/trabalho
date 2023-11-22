/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
gravidade = 0.36;
velocidade = 0.1;
velocidade_chao = velocidade;
velocidade_ar = 0.4;
velocidade_h = 0;
velocidade_v = 0;
velocidade_h_max = 6.05;
pulo = 10;

vida = 3;
has_fishing_rod = false;
is_fishing = false;
can_pull_fish = false;
exclamation_timer = -1;
fishing_count = 0;
global.checkpoint_x = x;
global.checkpoint_y = y;
game_paused = false;
original_room_speed = room_speed;
game_state = "playing"; // O estado inicial é "jogando"
global.pausado= false;

