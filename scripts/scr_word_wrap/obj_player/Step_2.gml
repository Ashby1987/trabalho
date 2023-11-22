/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(place_meeting(x + velocidade_h, y, obj_bloco)){
while(!place_meeting(x + sign(velocidade_h), y, obj_bloco)){
x += sign(velocidade_h);
}
velocidade_h = 0;
}

x += velocidade_h;

if(place_meeting(x, y+ velocidade_v, obj_bloco)){
while(!place_meeting(x, y + sign(velocidade_v), obj_bloco)){
y += sign(velocidade_v);
}
velocidade_v = 0;
}

y += velocidade_v;
