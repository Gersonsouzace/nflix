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
    
    Cenario: Senha inválida
        Quando eu faço login com "tony@stark.com" e "abc123"
        Entao não devo ser autenticado
        E devo ver a mensagem de alerta "Usuário e/ou senha inválidos."

    Cenario: Usuário não existe
        Quando eu faço login com "404@yahoo.com" e "abc123"
        Entao não devo ser autenticado
        E devo ver a mensagem de alerta "Usuário e/ou senha inválidos."

    Cenario: E-mail não infromado
        Quando eu faço login com "" e senha "abc123"
        Entao não devo ser autenticado
        E devo ver a mensagem de alerta "Opps. Cadê o email?"

    Cenario: Senha não infromado
        Quando eu faço login com "teste@gmail.com" e senha ""
        Entao não devo ser autenticado
        E devo ver a mensagem de alerta "Opps. Cadê a senha:"