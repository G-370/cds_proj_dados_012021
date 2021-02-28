## PROJETO INTEGRADO DE GESTÃO DE PROJETOS E DE DADOS - 20h_Turma_02_022021 


### Sobre
Neste repositório contém os arquivos de definição da máquina virtual vagrant utilizada para a execução do script SQl, também incluso, e produto da atividade única e principal desta matéria.


### Instruções de montagem/boot
1. Para executar no ambiente vagrant, baixe e instale o Vagrant e o VirtualBox
2. Navegue para a pasta onde se localiza esse repositório e utilize o comando "vagrant up".
3. Está pronto e rodando a máquina virtual.
4. Abra o phpmyadmin, ou qualquer outro programa com funcionalidade cliente SQL de sua escolha, e execute "script.sql"

* extra: se quiser entrar dentro da máquina, você pode utilizar o comando "vagrant ssh" enquanto no diretório.


### Informações Relevantes
* Endereços para dentro da máquina virtual: 
  + MYSQL: localhost:33006,
  + PHPMYADMIN: localhost:33008/phpmyadmin
* Credenciais do banco
  + usuário:	user123
  + senha:	1234986
* Credenciais do phpmyadmin
  + usuário: 	root
  + senha: 	1234986
* As credenciais são definidas no arquivo bootstrap.sh
