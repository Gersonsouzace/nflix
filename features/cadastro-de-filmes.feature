#language: pt

Funcionalidade: Cadastro de filmes
    Para que eu possa disponibilizar novos títulos no catálogo
    Sendo um getor de catálogo
    Posso cadastrar um novo filmes

    @new_movie
    Esquema do Cenario: Novo filme
        O gestor de catálogo cadastra um novo filme através do formulário,
        e um novo registro é inserido no catálogo Ninjaflix.

        Dado que <codigo> é um novo filme
        Quando eu faço o cadastro deste filme
        Então devo ver o novo filme na lista

        Exemplos:
            | codigo     |
            | "ultimato" |
            | "spider"   |
            | "jocker"   |

Cenario: Sem nome
    Quando eu tento  cadastrar um filme sem o nome
    Então devo ver a notificação "Oops - Filme sem título. Pode isso Arnaldo?"

Cenario: Sem status
    Quando eu tento cadastrar um filme sem status
    Então devo ver a notificação "Oops - O status deve ser informardo!"

Cenario: Ano de lançamento não informado
    Quando eu cadastrar um filme sem ano de lançamento
    Entao devo ver a notificação "Oops - Faltou o ano de lançamento também!"

Cenario: Data da estreia não informada
    Quando eu tento cadastrar um filme sem data de estréia 
    Entao devo ver a notificação "Oops -  Quase lá, só falta a data da estréia!"

Cenario: Duplicado
    Dado que "Deadpool 2" já foi cadastrado
    Quando eu faço o cadastro deste filme
    Entao devo ver a notificação "Oops - Este título já existe no Ninjaflix."