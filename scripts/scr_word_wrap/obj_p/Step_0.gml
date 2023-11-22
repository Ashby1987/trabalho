/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (room == 7) {
 if(!file_exists("pontos.ini")){
	  ini_open("pontos.ini");
	  ini_write_real("ponto", "pontos", global.score);
	  ini_close();}
	  if(file_exists("pontos.ini")){
		  
		    ini_open("pontos.ini");
		  var ler =ini_read_real("ponto", "pontos", noone);
		  ini_close();
		  if(global.score > ler){
			    ini_open("pontos.ini");
				 ini_write_real("ponto", "pontos", global.score);
				 	  ini_close();}}}
					  if(instance_exists(obj_menu)){
						  instance_destroy()}