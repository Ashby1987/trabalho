/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Decrementa o timer da mensagem a cada passo
message_timer -= 1;

// Verifica se o timer da mensagem chegou a zero ou menos
if (message_timer <= 0) {
    // Destroi o objeto de mensagem
    instance_destroy();
}
