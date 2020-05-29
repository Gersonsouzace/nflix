#language: pt



Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálogo NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com meu email e senha
    
    @login_happy
    Cenario: Acesso
        Quando eu faço login com "tony@stark.com" e "pwd123"
        Entao devo ser autenticado
        E devo ver "Tony Stark" na área logada

    @login_hapless
    Esquema do Cenario: login sem sucesso
        Quando eu faço login com <email> e <senha>
        Entao não devo ser autenticado
        E devo ver a mensagem de alerta <texto>

        Exemplos:
        |email            |senha    |texto                         |
        |"tony@stark.com" |"abc123" |"Usuário e/ou senha inválidos"|
        |"404@yahoo.com"  |"abc123" |"Usuário e/ou senha inválidos"|
        |""               |"abcxpto"|"Opps. Cadê o email?"         |
        |"teste@gmail.com"|""       |"Opps. Cadê a senha?"         |