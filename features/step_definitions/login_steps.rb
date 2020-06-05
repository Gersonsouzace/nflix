Quando("eu faço login com {string} e {string}") do |email, password|
    @login_page.go
    @login_page.with(email, password)

end
  
Entao("devo ser autenticado") do
    expect(get_token.length).to be 147
end
  
Entao("devo ver {string} na área logada") do |expect_name|
    expect(@sidebar.logged_user).to eql expect_name
end   

Entao("não devo ser autenticado") do
    expect(get_token).to be nil
end
      
Entao("devo ver a mensagem de alerta {string}") do |expect_message|
    expect(@login_page.alert).to eql expect_message
end