*** Settings ***
Documentation    Essa suíte testa a denúncia justificada e o comentário de usuário não logado
Resource         form_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
CT1 - Denuncia de comentário - Denúncia Justificada
	[Documentation]    Esse teste verifica o denúncio de comentário válido
	[Tags]             denuncia
	Acessar a pagina home do site
	Acessar pagina de login
	Digitar no campo email o email do usuario
    Digitar no campo senha a senha do usuário
    Acionar o botão login
	Entrar em uma receita
	Acionar botão denunciar
	Escrever Denúncia
	Terminar Denúncia
	Verificar denúncia

CT11 - Adicionar comentários na lista da receita - Usuario não logado
    [Documentation]    Este teste verificar se é possível comentar numa receita sem estar logado
	[Tags]    comentario
	Acessar a pagina home do site
	Entrar em uma receita
	Scroll para ver comentários
	Verificar comentários






