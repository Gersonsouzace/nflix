Dado("que {string} é um novo filme") do |movie_code|
   file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/movies.yaml"))
   @movie = file[movie_code]
   Database.new.delete_movie(@movie["title"])
  end

Dado("este filme ja existe no catalogo") do
  @movie_page.add
  @movie_page.create(@movie)
   
end

Quando("eu faço o cadastro deste filme") do
  @movie_page.add
  @movie_page.create(@movie)
   
end
  
Então("devo ver o novo filme na lista") do

  result = @movie_page.movie_tr(@movie)
  expect(result).to have_text @movie["title"]
  expect(result).to have_text @movie["status"]
end
  
Entao("devo ver a notificaçao {string}") do |expect_alert| 
  expect(@movie_page.alert).to eql expect_alert
end